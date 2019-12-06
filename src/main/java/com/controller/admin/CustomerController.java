package com.controller.admin;

import com.constant.SystemConstant;
import com.dto.CustomerDTO;
import com.service.AdminCustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
public class CustomerController {

    @Autowired
    private AdminCustomerService adminCustomerService;

    @RequestMapping(value = "/admin-customer/list", method = RequestMethod.GET)
    public ModelAndView adminListCustomerPage() {
        ModelAndView modelAndView = new ModelAndView("admin/list-customer");
        List<CustomerDTO> lists = adminCustomerService.findAll();
        modelAndView.addObject(SystemConstant.MODEL_CUSTOMER, lists);
        return modelAndView;
    }

    @RequestMapping(value = "/admin-customer/add", method = RequestMethod.POST)
    public ModelAndView createCustomer(@Valid @ModelAttribute CustomerDTO customerDTO, BindingResult bindingResult, Model model) {
        adminCustomerService.save(customerDTO);
        ModelAndView modelAndView = new ModelAndView("redirect:/admin-customer/list");
        return modelAndView;
    }

    @RequestMapping(value = "/admin-customer/edit", method = RequestMethod.GET)
    public ModelAndView adminEditCustomerPage(@RequestParam(value = "customerId", required = false) Integer id) {
        ModelAndView modelAndView = new ModelAndView("admin/edit-customer");
        CustomerDTO customerDTO = new CustomerDTO();
        if (id != null) {
            customerDTO = adminCustomerService.findOneById(id);
        }
        modelAndView.addObject(SystemConstant.MODEL_CUSTOMER, customerDTO);
        modelAndView.addObject(SystemConstant.MODEL_LIST_STATUS, adminCustomerService.getListStatus());
        return modelAndView;
    }

    @RequestMapping(value = "/admin-customer/edit", method = RequestMethod.POST)
    public ModelAndView updateCustomer(@Valid @ModelAttribute CustomerDTO customerDTO, BindingResult result, Model model) {
        adminCustomerService.save(customerDTO);
        ModelAndView modelAndView = new ModelAndView("redirect:/admin-customer/list");
        return modelAndView;
    }
}
