package com.perscholas.ecommerce.service;

import com.perscholas.ecommerce.controller.CheckoutController;
import com.perscholas.ecommerce.dao.CustomerRepository;
import com.perscholas.ecommerce.dto.Purchase;
import com.perscholas.ecommerce.dto.PurchaseResponse;
import com.perscholas.ecommerce.entity.Customer;
import com.perscholas.ecommerce.entity.Order;
import com.perscholas.ecommerce.entity.OrderItem;
import jakarta.transaction.Transactional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;
import java.util.UUID;

@Service
public class CheckoutServiceImpl implements CheckoutService{

    private static Logger logger = LoggerFactory.getLogger(CheckoutController.class);

    private CustomerRepository customerRepository;

    @Autowired
    public CheckoutServiceImpl(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @Override
    @Transactional
    public PurchaseResponse placeOrder(Purchase purchase) {
        logger.info("Iam in placeOrder BEGIN, orderTrackingNumber =  ");

        // retrieve the order info from dto
        Order order = purchase.getOrder();

        // generate tracking number
        String orderTrackingNumber = generateOrderTrackingNumber();
        order.setOrderTrackingNumber(orderTrackingNumber);

        // populate order with orderItems
        Set<OrderItem> orderItems = purchase.getOrderItems();
        for (OrderItem item : orderItems) {
            order.add(item);
        }

        // populate order with billingAddress and shippingAddress
        order.setBillingAddress(purchase.getBillingAddress());
        order.setShippingAddress(purchase.getShippingAddress());

        // populate customer with order
        Customer customer = purchase.getCustomer();

        // check if this is an existing customer
        String theEmail = customer.getEmail();

        Customer customerFromDB = customerRepository.findByEmail(theEmail);

        if (customerFromDB != null) {
            // we found them ... let's assign them accordingly
            customer = customerFromDB;
        }

        customer.add(order);

        logger.info("Iam in placeOrder, just  before CustomerRepository.save," +
                        " customer = ", customer);

        // save to the database
        customerRepository.save(customer);
        logger.info("Iam in placeOrder, orderTrackingNumber =  " + orderTrackingNumber);

        // return a response
        return new PurchaseResponse(orderTrackingNumber);
    }

    private String generateOrderTrackingNumber() {
        // generate a random UUID number (UUID version-4)
        //
        return UUID.randomUUID().toString();
    }
}
