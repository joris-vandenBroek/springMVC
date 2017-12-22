package com.springMVC.model;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Student {

	private String firstName;
	
	private String lastName;
	
	private String country;
	
	private String favoriteProgrammingLanguage;
	
	private List<String> operatingSystems;
	
	
}
