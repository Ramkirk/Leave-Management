package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class HelloController {

	@RequestMapping(value = "/")
	public String Login(HttpServletRequest request) throws Exception {
		return "hello";
	}

	@RequestMapping(value = "/Admin")
	public String Admin(HttpServletRequest request) throws Exception {
		return "admin";
	}

	@RequestMapping(value = "/Employee")
	public String Employee(HttpServletRequest request) throws Exception {
		return "employee";
	}
}