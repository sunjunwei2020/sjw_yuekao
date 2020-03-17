package com.sjw.dao;

import java.util.List;

import com.sjw.entity.Fmoney;
import com.sjw.entity.Qmoney;

public interface FmoneyDao {

	List<Fmoney> select(Fmoney fmoney);

	void add(Fmoney fmoney);

	Fmoney selectOne(Integer id);

	void update(Fmoney fmoney);

	List<Qmoney> selectq();

}
