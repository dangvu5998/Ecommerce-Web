package com.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    @RequestMapping(value = "/admin-login", method = RequestMethod.GET)
    public ModelAndView adminLoginPage(){
        ModelAndView modelAndView = new ModelAndView("admin/login");
        return modelAndView;
    }
}
