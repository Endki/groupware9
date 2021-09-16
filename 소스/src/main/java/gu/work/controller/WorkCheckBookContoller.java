package gu.work.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import gu.sign.SignCtr;

@Controller
public class WorkCheckBookContoller {
	
    static final Logger LOGGER = LoggerFactory.getLogger(SignCtr.class);
	
	
    @RequestMapping(value = "/workCheckBook")
    public String workCheckBook() {
        return "workCheckBook/workCheckBook";
    }
}
