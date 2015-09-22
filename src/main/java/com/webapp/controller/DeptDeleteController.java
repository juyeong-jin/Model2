package com.webapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class DeptDeleteController implements Controller {
	
	static Log log = LogFactory.getLog(DeptDeleteController.class);

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@");
		log.info("DeptDeleteController called...");
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@");
		
		return "";
	}
}
