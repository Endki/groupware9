package gu.work.service;

import org.springframework.stereotype.Service;

import gu.work.dto.WorkCheckBookDto;

public interface WorkCheckBookService {
	
	public void onCheck(WorkCheckBookDto workCheckBookDto);
	
}
