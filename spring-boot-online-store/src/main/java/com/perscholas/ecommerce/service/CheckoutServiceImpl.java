package com.perscholas.ecommerce.service;

import com.perscholas.ecommerce.dao.CustomerRepository;
import com.perscholas.ecommerce.dto.Purchase;
import com.perscholas.ecommerce.dto.PurchaseResponse;
import com.perscholas.ecommerce.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.UUID;

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

        // generate tracking number
        String orderTrackingNumber = generateOrderTrackingNumber();
        order.setOrderTrackingNumber(orderTrackingNumber);
        
        return null;
    }

    private String generateOrderTrackingNumber() {
        // generate a random UUID number (UUID version-4)
        //
        return UUID.randomUUID().toString();
    }
}
