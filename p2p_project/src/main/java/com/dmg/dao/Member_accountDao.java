package com.dmg.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.dmg.bean.Member_account;

@Component
public class Member_accountDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public List<Member_account> listMember_account(){
		String hql="from Member_account";
		Session session = getSession();
		List<Member_account> list = session.createQuery(hql).list();
		return list;
	}
	
	public List<Member_account> listMember_account(int id){
		String hql="from Member_account m where m.member="+id;
		Session session = getSession();
		List<Member_account> list = session.createQuery(hql).list();
		return list;
	}
	
	//idd涓虹敤鎴穒d,閫氳繃鐢ㄦ埛id鏌ヨ鍑烘垚鍛樿处鎴疯〃鐨勬湰鏉′俊鎭痠d
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
		//鍒ゆ柇鐢ㄦ埛鏄惁缁戝畾閾惰鍗�
//		public int ifnull(int idd){
//			Session session = getSession();
//			Member_account ma= (Member_account) session.get(Member_account.class, idd);			
//			if (ma.equals("")) {
//				return 0;
//			} else {
//				return 1;
//			}
//		}
	
	//鏍规嵁id淇敼璐︽埛鍙敤浣欓锛屾洿鏂版湰鏉℃暟鎹慨鏀规椂闂�
	public boolean top_upAmount(int idd,double amount, String ud){
		//String hql="update Member_account set useable_balance+="+amount+",update_date="+ud+" where member="+id;
		System.out.println("ud:"+ud);
		int id=listid(idd);
		Session session = getSession();
		Member_account member_account = (Member_account) session.get(Member_account.class, id);
		System.out.println("Member_accountDAO:"+member_account.getUseable_balance());
		//鍦ㄨ繖閲屽皢鍏呭�肩殑閲戦鍔犲湪鍘熸湰鐨勮处鎴峰彲鐢ㄤ綑棰濅箣涓婏紝閲嶆柊鐢熸垚鐩稿姞鍚庣殑璐︽埛鍙敤浣欓
		member_account.setUseable_balance(member_account.getUseable_balance()+amount);
		member_account.setUpdate_date(ud);
		session.update(member_account);
		return true;
	}
	
}
