package com.springMVC.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("hello")
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	@RequestMapping("processForm")
	public String processForm() {
		return "helloworld";
	}

	@RequestMapping("processFormVersion2")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		String studentName = request.getParameter("studentName").toUpperCase();
		model.addAttribute("message", "Yo! " + studentName);
		return "helloworld";
	}

	@RequestMapping("processFormVersion3")
	public String letsShoutDude(@RequestParam("studentName") String studentName , Model model) {
		model.addAttribute("message", "V3! " + studentName.toUpperCase());
		return "helloworld";
	}

}
