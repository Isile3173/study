package com.green.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public  String  home() {
		Calculator c = new Calculator();
		System.out.println( c.add(10, 20) );
		return  "home";
	}
}
