package com.deepak.crm.service;

import com.deepak.crm.model.Customer;
import com.deepak.crm.repo.CustomerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepo customerRepo;
    
        public Customer register(Customer customer){
            Customer saved = customerRepo.save(customer);
            return saved;
        }

    public void delete(Integer id){
        customerRepo.deleteById(id);
    }


    public void updateCustomer(Integer id) {
        Customer customer = customerRepo.findById(id).get();
        customerRepo.save(customer);
    }
}
