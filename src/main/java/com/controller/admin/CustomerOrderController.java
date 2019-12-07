package com.controller.admin;

import com.constant.SystemConstant;
import com.dto.CustomerDTO;
import com.dto.CustomerOrderDTO;
import com.service.AdminCustomerOrderService;
import com.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CustomerOrderController {
    @Autowired
    private AdminCustomerOrderService adminCustomerOrderService;

    @RequestMapping(value = "/admin-customer-order/list", method = RequestMethod.GET)
    public ModelAndView adminListCustomerOrderPage() {
        ModelAndView modelAndView = new ModelAndView("admin/list-customer-order");
        List<CustomerOrderDTO> lists = adminCustomerOrderService.findAll();
        modelAndView.addObject(SystemConstant.MODEL_CUSTOMER_ORDER, lists);
        return modelAndView;
    }
}
