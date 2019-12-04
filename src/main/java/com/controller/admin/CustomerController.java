package com.controller.admin;

import com.constant.SystemConstant;
import com.dto.CustomerDTO;
import com.service.AdminCustomerService;
import com.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CustomerController {

    @Autowired
    private AdminCustomerService adminCustomerService;

    @RequestMapping(value = "/admin-customer/list", method = RequestMethod.GET)
    public ModelAndView adminHomePage() {
        ModelAndView modelAndView = new ModelAndView("admin/list-customer");
        List<CustomerDTO> lists = adminCustomerService.findAll();
        modelAndView.addObject(SystemConstant.MODEL_CUSTOMER, lists);
        return modelAndView;
    }
}
