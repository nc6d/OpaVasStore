package com.example.store.controllers;

import com.example.store.models.ProductModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author auserox (Opanasiuk B.)
 */
@Controller
@RequestMapping(value = "product")
public class ProductController {

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        ProductModel productModel = new ProductModel();
        modelMap.put("products", productModel.findAll());
        return "product/index";
    }
}

