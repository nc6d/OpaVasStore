package com.store.controllers;

import com.store.entities.Item;
import com.store.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @author auserox (Opanasiuk B.)
 */
@Controller
@RequestMapping(value = "cart")
public class CartController {

    @Autowired
    ProductRepository productRepository;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String index(HttpSession session) {
        if (session.getAttribute("cart") == null) {
            return "cart/index_empty_cart";
        }
        return "cart/index";
    }

    @RequestMapping(value = "buy/{id}", method = RequestMethod.GET)
    public String buy(@PathVariable("id") String id, HttpSession session) {
        if (session.getAttribute("cart") == null) {
            List<Item> cart = new ArrayList<Item>();
            cart.add(new Item(productRepository.findById(id).get(), 1));
            session.setAttribute("cart", cart);
        } else {
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            int index = this.exists(id, cart);
            if (index == -1) {
                cart.add(new Item(productRepository.findById(id).get(), 1));
            } else {
                int quantity = cart.get(index).getQuantity() + 1;
                cart.get(index).setQuantity(quantity);
            }
            session.setAttribute("cart", cart);
        }
        return "redirect:/product";
    }

    @RequestMapping(value = "remove", method = RequestMethod.GET)
    public String removeAll(HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");

        if (cart != null) cart.clear();
        return "redirect:/cart/index";
    }

    @RequestMapping(value = "remove/{id}", method = RequestMethod.GET)
    public String remove(@PathVariable("id") String id, HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        int index = this.exists(id, cart);
        cart.remove(index);
        session.setAttribute("cart", cart);
        return "redirect:/cart/index";
    }

    private int exists(String id, List<Item> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProduct().getId().equalsIgnoreCase(id)) {
                return i;
            }
        }
        return -1;
    }

    @RequestMapping(value = "increase/{id}", method = RequestMethod.GET)
    private String increase(HttpSession session, @PathVariable("id") String id) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        int index = this.exists(id, cart);
        int quantity = cart.get(index).getQuantity() + 1;
        cart.get(index).setQuantity(quantity);
        return "redirect:/cart/index";
    }

    @RequestMapping(value = "decrease/{id}", method = RequestMethod.GET)
    private String decrease(HttpSession session, @PathVariable("id") String id) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        int index = this.exists(id, cart);
        int quantity = cart.get(index).getQuantity() - 1;
        cart.get(index).setQuantity(quantity);
        return "redirect:/cart/index";
    }

}
