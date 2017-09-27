package com.dmg.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dmg.bean.Member_deposit_record;
import com.dmg.service.Member_deposit_recordSevice;

@Controller
@RequestMapping("/member_deposit_record")
public class Member_deposit_recordController {

	@Autowired
	private Member_deposit_recordSevice member_deposit_recordSevice;
	
	
	@RequestMapping("/listMember_deposit_record")
	public String listMember_deposit_record(Model model,
			@RequestParam(required=false)String snumber,
			@RequestParam(required=false)String phone,
			@RequestParam(required=false)String status,
			@RequestParam(required=false)String fynumber,
			@RequestParam(required=false)String create_datem){
		Map map = new HashMap<>();
		map.put("snumber", snumber);
		map.put("phone", phone);
		map.put("status", status);
		map.put("fynumber", fynumber);
		map.put("create_datem", create_datem);
		
		List<Member_deposit_record> listmdr=member_deposit_recordSevice.listMember_deposit_record(map);
		model.addAttribute("listmdr", listmdr);
		
		model.addAttribute("snumber", snumber);
		model.addAttribute("phone", phone);
		model.addAttribute("status", status);
		model.addAttribute("fynumber", fynumber);
		
		return "backJsp/member_deposit_record";
	}
	@RequestMapping(value="listmdr",method = {RequestMethod.POST})
	@ResponseBody
	public void listmdr(HttpServletRequest request,HttpServletResponse response){
		// 设置返回字符编码
		response.setCharacterEncoding("UTF-8");
		String idd = request.getParameter("id");
		System.out.println("listmdrID:"+idd);
		int id=Integer.valueOf(idd);
		List<Member_deposit_record> mdr=member_deposit_recordSevice.listmdr(id);
		for (Member_deposit_record m : mdr) {
			System.out.println("流水号："+m.getSeril_number()+"--金额："+m.getAmount()+"--状态："+m.getStatus()+"--创建时间："+m.getCreate_date());
		}
		JSONArray jsonArray = new JSONArray();
		jsonArray.put(mdr);
		PrintWriter out=null;
		//在try-catch中把JSON数组写到response输出流
		try {
			out=response.getWriter();
			//返回给page
			out.write(jsonArray.toString());
			System.out.println(jsonArray.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if (out != null) {
					out.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
}
