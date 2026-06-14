package com.deepak.crm.controller;

import com.deepak.crm.model.Customer;
import com.deepak.crm.repo.CustomerRepo;
import com.deepak.crm.service.CustomerService;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CustController {

    @Autowired
    private CustomerService service;

    @Autowired
    private CustomerRepo customerRepo;

    @GetMapping("/getForm")
    public String getForm(){
        return "form";
    }

    @PostMapping("/register")
    public String register(Model model,@ModelAttribute("cust") Customer customer){
        System.out.println(customer);
        Customer savedCust = service.register(customer);
        model.addAttribute("customer",savedCust);
        return "redirect:CxInfo";
    }

    @GetMapping("/CxInfo")
    public String allCustomers(Model model){
        Iterable<Customer> all = customerRepo.findAll();
        System.out.println(all);
        model.addAttribute("customers",all);
        return "customerinfo";
    }

    @GetMapping("/deleteCust")
    public String deleteCustomer(@RequestParam("custId") Integer id,Model model){
        service.delete(id);
        return "redirect:/CxInfo";
    }

    @GetMapping("/update")
    public String updateCustomer(@RequestParam("custId") Integer id, Model model){

        Customer customer = customerRepo.findById(id).orElse(null);

        model.addAttribute("customer", customer);

        return "updateForm";
    }
}


