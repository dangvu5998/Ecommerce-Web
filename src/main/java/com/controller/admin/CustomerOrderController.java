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
import org.springframework.web.bind.annotation.RequestParam;
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
        modelAndView.addObject(SystemConstant.MODEL_LIST_CUSTOMER_ORDER, lists);
        return modelAndView;
    }

    @RequestMapping(value = "/admin-customer-order/show", method = RequestMethod.GET)
    public ModelAndView adminshowOrderPage(@RequestParam(value = "customerOrderId") Integer id) {
        ModelAndView modelAndView = new ModelAndView("admin/order-detail");
        modelAndView.addObject(SystemConstant.MODEL_CUSTOMER_ORDER, adminCustomerOrderService.findById(id));
        return modelAndView;
    }

    @RequestMapping(value = "/admin-customer-order/confirm", method = RequestMethod.GET)
    public ModelAndView adminConfirmOrderPage(@RequestParam(value = "customerOrderId") Integer id) {
        ModelAndView modelAndView = new ModelAndView("redirect:/admin-customer-order/list");
        CustomerOrderDTO customerOrderDTO = adminCustomerOrderService.findById(id);
        customerOrderDTO.setStatus(SystemConstant.ACTIVE_STATUS);
        adminCustomerOrderService.save(customerOrderDTO);
        return modelAndView;
    }

}
