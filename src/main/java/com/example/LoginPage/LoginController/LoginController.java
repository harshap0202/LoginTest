package com.example.LoginPage.LoginController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
                                       
	@GetMapping("/")
    public String about() {
        return "index";
    }

}