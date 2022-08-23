package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(exclude = HibernateJpaAutoConfiguration.class)
@ComponentScan("comm")
public class EmployeesRegistrationFormApplication {

	public static void main(String[] args) {
		SpringApplication.run(EmployeesRegistrationFormApplication.class, args);
	}

}
