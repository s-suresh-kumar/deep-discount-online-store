package com.perscholas.ecommerce.dto;

import com.perscholas.ecommerce.entity.Address;
import com.perscholas.ecommerce.entity.Customer;
import com.perscholas.ecommerce.entity.Order;
import com.perscholas.ecommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;

}
