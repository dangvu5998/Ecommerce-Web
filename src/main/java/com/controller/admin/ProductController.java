package com.controller.admin;

import com.constant.SystemConstant;
import com.dto.ProductDTO;
import com.service.AdminProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;

@Controller(value = "adminProductController")
public class ProductController {
    @Autowired
    private AdminProductService adminProductService;

    @RequestMapping(value = "/admin-product/list", method = RequestMethod.GET)
    public ModelAndView adminListCustomerPage(@RequestParam(value = "category", required = false) String category) {
        ModelAndView modelAndView = new ModelAndView("admin/list-product");
        if (category != null) {
            List<ProductDTO> lists = adminProductService.findByCategory(category);
            modelAndView.addObject(SystemConstant.MODEL_PRODUCT, lists);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/admin-product/add", method = RequestMethod.POST)
    public ModelAndView createCustomer(@Valid @ModelAttribute ProductDTO productDTO, BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes) {
        adminProductService.save(productDTO);
        redirectAttributes.addAttribute("category", productDTO.getProductCategory());
        ModelAndView modelAndView = new ModelAndView("redirect:/admin-product/list");
        return modelAndView;
    }

    @RequestMapping(value = "/admin-product/edit", method = RequestMethod.GET)
    public ModelAndView adminEditCustomerPage(@RequestParam(value = "productId", required = false) Integer id) {
        ModelAndView modelAndView = new ModelAndView("admin/edit-product");
        ProductDTO productDTO = new ProductDTO();
        if (id != null) {
            productDTO = adminProductService.findOneById(id);
        }
        modelAndView.addObject(SystemConstant.MODEL_PRODUCT, productDTO);
        modelAndView.addObject(SystemConstant.MODEL_LIST_CATEGORY, adminProductService.findListCategory());
        modelAndView.addObject(SystemConstant.MODEL_LIST_MANUFACTURE, adminProductService.findListManufacture());
        return modelAndView;
    }

    @RequestMapping(value = "/admin-product/edit", method = RequestMethod.POST)
    public ModelAndView updateCustomer(@Valid @ModelAttribute ProductDTO productDTO, BindingResult result, Model model, RedirectAttributes redirectAttributes) {
        adminProductService.save(productDTO);
        redirectAttributes.addAttribute("category", productDTO.getProductCategory());
        ModelAndView modelAndView = new ModelAndView("redirect:/admin-product/list");
        return modelAndView;
    }

    @RequestMapping(value = "/admin-product/delete", method = RequestMethod.GET)
    public ModelAndView adminDeleteCustomerPage(@RequestParam(value = "productId", required = false) Integer id, RedirectAttributes redirectAttributes) {
        redirectAttributes.addAttribute("category", adminProductService.findOneById(id).getProductCategory());
        adminProductService.delete(id);
        ModelAndView modelAndView = new ModelAndView("redirect:/admin-product/list");
        return modelAndView;
    }
}
