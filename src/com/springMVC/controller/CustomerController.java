package com.springMVC.controller;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springMVC.model.Customer;
import com.sun.beans.editors.IntegerEditor;

import javafx.beans.binding.IntegerBinding;


@Controller
@RequestMapping("customer")
public class CustomerController {

	@RequestMapping("showForm")
	public String showForm(
			@ModelAttribute("customer") Customer customer, 
			Model model) {
	    return "customer/registration";
	}
	

	@RequestMapping("processForm")
	public String processForm(
			@Valid @ModelAttribute("customer") Customer customer, 
			BindingResult bindingResult) {
		System.out.println("firstName: |" + customer.getFirstName() + "|");
		System.out.println("lastName: |" + customer.getLastName() + "|");
		System.out.println("freePasses: |" + customer.getFreePasses() + "|");
		System.out.println("postalCode: |" + customer.getPostalCode() + "|");
		if (bindingResult.hasErrors()) {
			return "customer/registration";
		} else {
			return "customer/registration-confirmation";
		}
	}

	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimEditor);
		
		IntegerEditor integerEditor = new IntegerEditor();
		dataBinder.registerCustomEditor(Integer.class, "freePasses", integerEditor);
	}
}
