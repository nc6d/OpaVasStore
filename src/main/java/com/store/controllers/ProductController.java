package com.store.controllers;

import com.store.entities.Product;
import com.store.repository.ProductRepository;
import org.bson.types.ObjectId;
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

    ProductRepository repository;

    @Autowired
    public void setRepository(ProductRepository repository) {
        this.repository = repository;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.put("products", repository.findAll());
        return "product/index";
    }

    @RequestMapping("/new_product")
    public String newProduct() {
        return "product/new_product";
    }

    @PostMapping("/create")
    public String createNew(@RequestParam String name,
                            @RequestParam String description,
                            @RequestParam double price) {
        repository.save(new Product(name, description, price));

        return "redirect:/product";
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") ObjectId id) {
        repository.deleteById(id);
        return "redirect:/product";
    }

    @RequestMapping("/editing/{id}")
    public String editProduct(@PathVariable ObjectId id, ModelMap modelMap){
        modelMap.put("product", repository.findById(id).get());
        return "product/edit_product";
    }

    @RequestMapping("/edit")
    public String editConfirm(@RequestParam ObjectId id,
                       @RequestParam String name,
                       @RequestParam String description,
                       @RequestParam double price){
        Product product = repository.findById(id).get();

        product.setName(name);
        product.setDescription(description);
        product.setPrice(price);

        repository.save(product);

        return "redirect:/product";
    }

}