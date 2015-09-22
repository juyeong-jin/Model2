package com.webapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class CityController implements Controller {
	
	static Log log = LogFactory.getLog(CityController.class);

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		
		request.setCharacterEncoding("utf-8");
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@");
		log.info("CityController called...");
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@");
		log.info("dname = " + request.getParameter("dname"));
		
		return "";
	}
}
