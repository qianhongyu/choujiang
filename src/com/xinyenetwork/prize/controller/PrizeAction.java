package com.xinyenetwork.prize.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xinyenetwork.prize.biz.IPrizeBiz;
import com.xinyenetwork.prize.pojo.People;
import com.xinyenetwork.prize.pojo.Prize;
import com.xinyenetwork.prize.pojo.Winlist;

@Controller
@RequestMapping("/")

public class PrizeAction {
	@Autowired
	private IPrizeBiz iPrizeBiz;

	
	@RequestMapping("getPrizeList")
	public String getPrizeList(Prize prize,Map<String,Object> map) {
		List<Prize> prizeList = iPrizeBiz.getPrizeList();
		map.put("prizeList",prizeList);
		System.out.println(prizeList.size() + "____________________________________________________________");
		return "/lotterydraw.jsp";
	}
	
	@RequestMapping("getPrizeList1")
	@ResponseBody
	public Map getPrizeList1(HttpServletRequest request) {
		Map map = new HashMap();
		List<Prize> prizeInfo1 = new ArrayList<Prize>();
		prizeInfo1 = iPrizeBiz.getPrizeList();
		request.getSession().setAttribute("prizeInfo", prizeInfo1);
		map.put("list", prizeInfo1);
		System.out.println(prizeInfo1.size() + "==================");
		return map;
	}
	
	@RequestMapping("getPeopleList")
	@ResponseBody
	public Map getPeopleList(HttpServletRequest request) {
		Map map = new HashMap();
		List<People> peolpeInfo = new ArrayList<People>();
		peolpeInfo = iPrizeBiz.getPeopleList();
		request.getSession().setAttribute("peolpeInfo", peolpeInfo);
		map.put("list", peolpeInfo);
		System.out.println(peolpeInfo.size() + "==================");
		return map;
	}
	
	@RequestMapping("getAllWinList")
	public String getAllWinList(Winlist winlist,Map<String,Object> map){
		List<Winlist> list = iPrizeBiz.getAllWinList();
		map.put("list", list);
		System.out.println(list.size() + "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
		return "/lotterydraw.jsp";
	}
}