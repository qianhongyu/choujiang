package com.xinyenetwork.prize.biz;

import java.util.List;

import com.xinyenetwork.prize.pojo.People;
import com.xinyenetwork.prize.pojo.Prize;
import com.xinyenetwork.prize.pojo.Winlist;


public interface IPrizeBiz {

	// 查询所有奖项名称
	List<Prize> getPrizeList();

	//查询所有中奖人员信息
	List<Winlist> getAllWinList();
	
	List<People> getPeopleList();
}
