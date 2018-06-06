package com.first.springooot.FirstSpringBoot;

import lombok.Value;

@Value
public class Employee {
	public long id;
	public String name;
	
	public Employee() {
		this.id = 0;
		this.name = "";
	}
	
}
