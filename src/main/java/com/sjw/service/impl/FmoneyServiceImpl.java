package com.sjw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sjw.dao.FmoneyDao;
import com.sjw.entity.Fmoney;
import com.sjw.entity.Qmoney;
import com.sjw.service.FmoneyService;

@Service
public class FmoneyServiceImpl implements FmoneyService {

	@Autowired
	private FmoneyDao dao;

	@Override
	public PageInfo<Fmoney> select(Fmoney fmoney, Integer pageNum, Integer pageSize) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<Fmoney> list = dao.select(fmoney);
		
		return new PageInfo<>(list);
	}

	@Override
	public void add(Fmoney fmoney) {
		dao.add(fmoney);
	}

	@Override
	public Fmoney selectOne(Integer id) {
		
		return dao.selectOne(id);
	}

	@Override
	public void update(Fmoney fmoney) {
		dao.update(fmoney);
	}

	@Override
	public List<Qmoney> selectq() {
		
		return dao.selectq();
	}
	
	
}
