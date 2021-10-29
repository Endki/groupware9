package gu.work.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gu.work.dao.WorkCheckBookDao;
import gu.work.dto.WorkCheckBookDto;

@Repository
public class WorkCheckBookDaoImpl implements WorkCheckBookDao{
	
    @Autowired
    private SqlSessionTemplate sqlSession;
    
    private static final String NAMESPACE = "servicepack.cb.dao.";
    
	@Override
	public void onCheck(WorkCheckBookDto workCheckBookDto) {
		
		sqlSession.insert("onCheck", workCheckBookDto);
		
	}

}
