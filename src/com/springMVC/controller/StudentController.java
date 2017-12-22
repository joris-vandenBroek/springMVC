package com.springMVC.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springMVC.model.Student;


@Controller
@RequestMapping("student")
public class StudentController {

	@Value("#{countryOptions}")
	private Map<String, String> countryOptions;

	@Value("#{programmingLanguageOptions}")
	private Map<String, String> programmingLanguageOptions;

	@Value("#{operatingSystemsOptions}")
	private Map<String, String> operatingSystemsOptions;

	@RequestMapping("showForm")
	public String showForm(@ModelAttribute("student") Student student, Model model) {
		model.addAttribute("countryOptions", countryOptions);
		model.addAttribute("programmingLanguageOptions", programmingLanguageOptions);
		model.addAttribute("operatingSystemsOptions", operatingSystemsOptions);
		
	    return "student/registration";
	}
	

	@RequestMapping("processForm")
	public String processForm(@ModelAttribute("student") Student student) {
		System.out.println("Student: " + student.getFirstName() + " " + student.getLastName());;
	
		return "student/registration-confirmation";
	}

}
