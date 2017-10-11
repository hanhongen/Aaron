package com.dmg.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dmg.bean.Member;
import com.dmg.bean.Member_account;

@Component
public class Member_accountDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private MemberDao memberDao;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public List<Member_account> listMember_account(){
		String hql="from Member_account";
		Session session = getSession();
		List<Member_account> list = session.createQuery(hql).list();
		return list;
	}
	/**
	 * 账户可用余额
	 * 投资金额(元)
	 * 累计收益(元)
	 * 冻结金额(元)
	 * 所查表：member_account(成员账户表)
	 */
	public Member_account listma(int id){
		System.out.println("-----listMember_account:"+id);
		//String hql="from Member_account m where m.member="+id;
		Session session = getSession();
		int idd=getById(id);
		//List<Member_account> list = session.createQuery(hql).list();
		Member_account member_account = (Member_account) session.get(Member_account.class, idd);		
		return member_account;
	}
	
	public List<Member_account> listMember_account(int id){
		System.out.println("-----listMember_account:"+id);
		String hql="from Member_account m where m.member="+id;
		Session session = getSession();
		List<Member_account> list = session.createQuery(hql).list();		
		return list;
	}
	
	//idd为用户id,通过用户id查询出成员账户表的本条信息id
		public int listid(int idd){
			String sql="select id from member_bankcards where member_id="+idd;			
			try {				
				Session session = getSession();
				Object s = (Object)session.createSQLQuery(sql).list().get(0);
				int id=Integer.parseInt(s.toString());
				if (!s.equals("")) {
					return id;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 0;		
		}
		//判断用户是否存在成员账户信息
		public boolean ifnull(int idd){
			Session session = getSession();
			Member_account ma= (Member_account) session.get(Member_account.class, idd);		
			boolean flag;
			if (ma == null) {
				flag=true;
			} else {
				flag=false;
			}
			return flag;
		}
		
	public int getById(int id){
		Session session = getSession();
		String sql="select id from member_account where member_id="+id;
		Object s = (Object)session.createSQLQuery(sql).list().get(0);
		int i=Integer.parseInt(s.toString());
		return i;
	}
	//充值完成后的账户可用余额在这里增加
	//根据id修改账户可用余额，更新本条数据修改时间
	public boolean top_upAmount(int idd,double amount, String ud){
		//String hql="update Member_account set useable_balance+="+amount+",update_date="+ud+" where member="+id;
		System.out.println("ud:"+ud);
		System.out.println("充值金额amount:"+amount);
		System.out.println("充值完成后 id："+idd);
		//根据user的id得出member的id
		//int id=memberDao.correct(idd);
		//根据member的id得到Member_account的id
		int i_d=getById(idd);
		//System.out.println("top_upAmount userid--"+idd);
		System.out.println("top_upAmount memberid--"+idd);
		System.out.println("top_upAmount Member_account--"+i_d);
		Session session = getSession();
		Member_account member_account = (Member_account) session.get(Member_account.class, i_d);
		System.out.println("Member_accountDAO:"+member_account.getUseable_balance());
		//在这里将充值的金额加在原本的账户可用余额之上，重新生成相加后的账户可用余额
		System.out.println("账户金额："+member_account.getUseable_balance());
		System.out.println("账户金额加充值金额："+Double.valueOf(member_account.getUseable_balance())+amount);
		member_account.setUseable_balance(Double.valueOf(member_account.getUseable_balance())+amount);
		member_account.setUpdate_date(ud);
		session.update(member_account);
		return true;
	}
	//如果充值时数据库不存在数据那么久创建保存数据
	public void accnull(int idd){
		Session session = getSession();
		Member member=memberDao.getMemberId(idd);
		Member_account member_account = new Member_account();
		member_account.setMember(member);
		session.save(member_account);
	}
	//提款
	public boolean tkAmountUpdate(int id,double amount){
		Session session = getSession();
		Member member=memberDao.getMemberId(id);
		Member_account member_account = new Member_account();
		//账户余额必须大于提款金额，提款功能才能实现
		if (Double.valueOf(member_account.getUseable_balance())>=amount) {
			System.out.println("账户余额必须大于提款金额，提款功能才能实现");
			member_account.setUseable_balance(Double.valueOf(member_account.getUseable_balance())-amount);
			member_account.setMember(member);
			session.update(member_account);
		}
		return true;
	}

}
