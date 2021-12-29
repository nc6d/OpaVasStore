package com.store.controllers;

import com.store.entities.Product;
import com.store.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * @author auserox (Opanasiuk B.)
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductRepository repository;

    public void setRepository(ProductRepository repository) {
        this.repository = repository;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
//        ProductModel productModel = new ProductModel();
//        modelMap.put("products", productModel.findAll());
        modelMap.put("products", repository.findAll());
        return "product/index";
    }


    @RequestMapping("/new_product")
    public String newProduct() {
        return "product/new_product";
    }

    @PostMapping("/create")
    public String createNew(ModelMap modelMap,
                            @RequestParam String id,
                            @RequestParam String name,
                            @RequestParam String description,
                            @RequestParam int price) {
        modelMap.put("products", repository.save(new Product(id, name, description, price)));
        return "redirect:/product";
    }
}

