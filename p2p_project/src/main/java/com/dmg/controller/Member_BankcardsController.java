package com.dmg.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dmg.bean.Member;
import com.dmg.bean.Member_bankcards;
import com.dmg.dao.MemberDao;
import com.dmg.service.MemberService;
import com.dmg.service.Member_BankcardsService;
//�󿨹���
@Controller
@RequestMapping("/member_bankcards")
public class Member_BankcardsController {
	@Autowired
	private Member_BankcardsService member_BankcardsService;
	@Autowired
	private MemberDao memberDao;

	/**
	 * �б���ʾ��
     * 绑卡管理
	 * @return
	 */
	@RequestMapping("/listMember_Bankcards")//��ѯ��ģ���ѯ
	public String listMember_Bankcards(Model model,
			@RequestParam(required=false)String phone,
			@RequestParam(required=false)String cardname,
			@RequestParam(required=false)String cardno,
			@RequestParam(required=false)String createdate){
		
		Map map = new HashMap<>();
		map.put("phone", phone);//�ֻ�
		map.put("cardname", cardname);//������
		map.put("cardno", cardno);//����
		map.put("createdate", createdate);//ʱ��
		
		List<Member_bankcards> listmb = member_BankcardsService.listMember_bankcards(map);//����
		for (Member_bankcards mb : listmb) {
			System.out.println("listMember_Bankcards:"+mb.getMember().getMobile_phone());
		}
		model.addAttribute("listmb", listmb);
		
		model.addAttribute("phone", phone);
		model.addAttribute("cardname", cardname);
		model.addAttribute("cardno", cardno);
		
		return "backJsp/member_bankcards";
	}
	@RequestMapping("/updateflag/{id}")//�߼�ɾ��,������п�
	public String updateflag(@PathVariable("id")int id){
		System.out.println("ID:"+id);
		member_BankcardsService.updateDelFlag(id);
		return "redirect:/member_bankcards/listMember_Bankcards";
	}
	@RequestMapping(value="listmb",method=RequestMethod.POST)
	@ResponseBody
	public List<Member_bankcards> listmb(HttpServletRequest request,Model model){
		//user的用户id
		String idd=request.getParameter("id");
		HttpSession session = request.getSession();
		session.setAttribute("idd", idd);
		int id = Integer.valueOf(idd);
		List<Member_bankcards> list = member_BankcardsService.listMember_bankcards(id);
		return list;
	}
	
	//检查用户是否绑卡
	@RequestMapping(value="checkBank",method=RequestMethod.POST)
	@ResponseBody
	public String checkBank(HttpServletRequest request){
		System.out.println("");
		String i = request.getParameter("id");//member的id
		System.out.println("userID:"+i);
		//通过userID得到memberID
		int ii=Integer.valueOf(i);
		//int id = memberDao.correctTwo(ii);

		//System.out.println("通过userID得到memberID:"+id);
		String flag = member_BankcardsService.checkMember_bankcards(ii);
		return flag;
	}
	//用户绑卡操作
	@RequestMapping(value="BankCard",method=RequestMethod.POST)
	@ResponseBody
	public boolean BankCard(HttpServletRequest request){
		String i = request.getParameter("id");//user的id
		String type = request.getParameter("type");//银行类型
		String card_no = request.getParameter("card_no");//银行卡号
		String province = request.getParameter("province");//省
		String city = request.getParameter("city");//市
		String county = request.getParameter("county");//区
		
		String pcc;
		if (county != null) {
			pcc = province+""+city+""+county;//省市区拼接
		} else {
			pcc = province+""+city;//省市拼接
		}
		System.out.println("userID:"+i);
		System.out.println("银行类型："+type);
		System.out.println("省市区字符串拼接："+pcc);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String time = sdf.format(new Date().getTime());
		System.out.println("Payment_is_completed-当前时间:"+time);
		
		Member_bankcards member_bankcards = new Member_bankcards();
		member_bankcards.setCard_no(card_no);
		member_bankcards.setCardaddress(pcc);
		member_bankcards.setCreate_date(time);
		member_bankcards.setDelflag(0);
		member_bankcards.setType(type);
		//通过userID得到memberID
		int ii=Integer.valueOf(i);
		System.out.println("bank----:"+ii);
		//int id = memberDao.correct(ii);
		Member member= memberDao.getMemberId(ii);
		member_bankcards.setMember(member);
		//将绑卡信息写入数据库
		boolean flag = member_BankcardsService.saveBankCard(member_bankcards);
		return flag;
	}
	
}
