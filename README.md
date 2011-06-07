SpreeSalecycle
==============

Pre-checkout
============

Use `insert_after :outside_cart_form` to hook into the cart view page.  Hook located in **/core/app/views/orders/edit.html.erb.  OrdersController#edit.

Checkout
========

Use `insert_after :checkout_summary_box` to hook into the order summary window that is present during each stage of the checkout.  Hook located in **/core/app/views/checkout/edit.html.erb.

Confirmed Payment
=================

User `insert_after :order_details` to hook into the summary of the order once payment has been confirmed.  Hook located in **/core/app/views/shared/_order_details.html.erb.

Example
=======

Example goes here.


Copyright (c) 2011 [name of extension creator], released under the New BSD License
