package com.example.lesson05;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Lesson05Controller {
	
	
	// http://localhost:8080/lesson05/ex01
	@RequestMapping("/lesson05/ex01")
	public String ex01() {
		return "lesson05/ex01";
	}
	// http://localhost:8080/lesson05/ex02
	@RequestMapping("/lesson05/ex02")
	public String ex02(Model model) {
		// list
		List<String> fruits = new ArrayList<>();
		fruits.add("mango");
		fruits.add("apple");
		fruits.add("grape");
		fruits.add("peach");
		fruits.add("melon");
		
		// list map
		List<Map <String, Object>> users = new ArrayList<>();
		Map<String, Object> user = new HashMap<>();
		user.put("name", "김혜주");
		user.put("age", 27);
		user.put("hobby", "게임하기");
		users.add(user);
		
		user = new HashMap<>();
		user.put("name", "강아지");
		user.put("age", 25);
		user.put("hobby", "맛집찾기");
		users.add(user);
		
		model.addAttribute("fruits", fruits);
		model.addAttribute("users", users);
		
		return "lesson05/ex02";
	}
	
	// http://localhost:8080/lesson05/ex03
	@RequestMapping("/lesson05/ex03")
	public String ex03(Model model){
		Date today = new Date();
		model.addAttribute("today", today);
		return "lesson05/ex03";
	}
	
<<<<<<< HEAD
	// http://localhost:8080/lesson05/ex04
		@RequestMapping("/lesson05/ex04")
		public String ex04(){
			return "lesson05/ex04";
		}
	
=======
>>>>>>> origin/develop
}
