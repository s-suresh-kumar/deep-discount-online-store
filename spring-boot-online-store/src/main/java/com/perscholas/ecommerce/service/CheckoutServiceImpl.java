package com.perscholas.ecommerce.service;

import com.perscholas.ecommerce.dao.CustomerRepository;
import com.perscholas.ecommerce.dto.Purchase;
import com.perscholas.ecommerce.dto.PurchaseResponse;
import com.perscholas.ecommerce.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;

public class CheckoutServiceImpl implements CheckoutService{

    private CustomerRepository customerRepository;

    @Autowired
    public CheckoutServiceImpl(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @Override
    public PurchaseResponse placeOrder(Purchase purchase) {
        // retrieve the order info from dto
        Order order = purchase.getOrder();

        return null;
    }
}
