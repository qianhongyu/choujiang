package com.xinyenetwork.prize.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinyenetwork.prize.mapper.PrizeMapper;
import com.xinyenetwork.prize.pojo.People;
import com.xinyenetwork.prize.pojo.Prize;
import com.xinyenetwork.prize.pojo.Winlist;

@Service("prizeBiz")
public class PrizeBizImpl implements IPrizeBiz{

	@Autowired
	private PrizeMapper prizeMapper;

	@Override
	public List<Prize> getPrizeList() {
		// TODO 自动生成的方法存根		
		return prizeMapper.getPrizeList();
	}

	@Override
	public List<Winlist> getAllWinList() {
		// TODO Auto-generated method stub
		return prizeMapper.getAllWinList();
	}
	
	@Override
	public List<People> getPeopleList() {
		// TODO Auto-generated method stub
		return prizeMapper.getPeopleList();
	}
	
	
}
