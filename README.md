SpreeSalecycle
==============

Intro
=====

Salecycle
---------

Installation
============

Overview
========

Hooks
-----

The Salecycle extension uses hooks defined by Spree to insert the SaleCycle JavaScript that records user information.  In order to track the user's order before, during, and after checkout the following hooks were used:

```
insert_after :outside_cart_form, 'shared/salecycle'
insert_after :checkout_summary_box, 'shared/salecycle'
insert_after :order_details_total, 'shared/salecycle'
```

For inquiring minds, here is a list of the hook locations:

\*\*/core/app/views/edit.html.erb
\*\*/core/app/views/checkout/edit.html.erb
\*\*/core/app/views/shared/_order_details.html.erb

Salecycle Javascript
--------------------

The _salecycle.html.erb partial provides the SaleCycle JavaScript Array of variables and attempts to set them based on the current state of the order and any settings defined through the Spree Administration interface.  It also includes a final JavaScript tag to submit the data to SaleCycle based on the name of your application.


Configuration Settings
----------------------

There are a handful of configuration settings that can be set through the Spree Administration interface.  To access these settings, simply navigate to the 'Configuration' tab of the Administration interface and select the 'SaleCycle Settings' link from the list.

### Mandatory ###

In order for SaleCycle to function correctly, two settings must be defined: `:salecycle_client_id` and `:salecycle_app_name`.  Both of these are defined or provided as a result of signing up with SaleCycle and must be configured before SaleCycle can receive any information being recorded.

### Custom ###

SaleCycle also provides 3 variables which are not already handled by attributes on LineItems, Products, Variants, or Users in a default Spree environment: `:salecycle_custom_field_1`, `:salecycle_custom_field_2` and `:salecycle_user_opt_out_method`.

Each of these settings is configurable through the settings interface

Example
=======

Example goes here.


Copyright (c) 2011 [name of extension creator], released under the New BSD License
