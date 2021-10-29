package gu.work.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import gu.work.service.impl.WorkCheckBookServiceImpl;

@Controller
public class WorkCheckBookContoller {
	
	@Autowired
	private WorkCheckBookServiceImpl workSvc;
	
    static final Logger LOGGER = LoggerFactory.getLogger(WorkCheckBookContoller.class);
	
	
    @RequestMapping(value = "/workCheckBook")
    public String workCheckBook(HttpServletRequest request,ModelMap modelMap) {
        return "workCheckBook/workCheckBook";
    }
}
