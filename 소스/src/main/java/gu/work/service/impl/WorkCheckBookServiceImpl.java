package gu.work.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gu.work.dao.WorkCheckBookDao;
import gu.work.dto.WorkCheckBookDto;
import gu.work.service.WorkCheckBookService;

@Service
@Transactional
public class WorkCheckBookServiceImpl implements WorkCheckBookService{
	
	@Autowired
	private WorkCheckBookDao wcDao;
	
	@Override
	public void onCheck(WorkCheckBookDto workCheckBookDto) {
		
	}	
}
