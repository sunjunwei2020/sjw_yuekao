package com.sjw.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.sjw.entity.Fmoney;
import com.sjw.entity.Qmoney;

public interface FmoneyService {

	PageInfo<Fmoney> select(Fmoney fmoney, Integer pageNum, Integer pageSize);

	void add(Fmoney fmoney);

	Fmoney selectOne(Integer id);

	void update(Fmoney fmoney);

	List<Qmoney> selectq();

}
