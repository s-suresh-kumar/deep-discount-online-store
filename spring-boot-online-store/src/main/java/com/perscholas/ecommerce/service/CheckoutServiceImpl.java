package com.perscholas.ecommerce.service;

import com.perscholas.ecommerce.dao.CustomerRepository;
import com.perscholas.ecommerce.dto.Purchase;
import com.perscholas.ecommerce.dto.PurchaseResponse;
import com.perscholas.ecommerce.entity.Customer;
import com.perscholas.ecommerce.entity.Order;
import com.perscholas.ecommerce.entity.OrderItem;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Set;
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
        customer.add(order);

        // save to the database
        customerRepository.save(customer);

        // return a response
        return new PurchaseResponse(orderTrackingNumber);
    }

    private String generateOrderTrackingNumber() {
        // generate a random UUID number (UUID version-4)
        //
        return UUID.randomUUID().toString();
    }
}
