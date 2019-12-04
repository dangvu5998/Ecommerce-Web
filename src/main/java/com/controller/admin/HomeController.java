package com.controller.admin;

import com.entity.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "adminHomeController")
public class HomeController {
    @RequestMapping(value = "/admin-home", method = RequestMethod.GET)
    public ModelAndView adminHomePage() {
        ModelAndView modelAndView = new ModelAndView("admin/home");
        return modelAndView;
    }
}
