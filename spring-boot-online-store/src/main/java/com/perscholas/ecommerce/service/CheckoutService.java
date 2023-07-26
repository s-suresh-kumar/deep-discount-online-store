package com.perscholas.ecommerce.service;

import com.perscholas.ecommerce.dto.Purchase;
import com.perscholas.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {
    PurchaseResponse placeOrder(Purchase purchase);

}
