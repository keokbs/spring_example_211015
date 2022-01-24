package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class}) DB 연동을 안한다는 어노테이션
@SpringBootApplication
public class SpringExampleApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(SpringExampleApplication.class, args);
		
	}
	
}
