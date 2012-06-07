Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :name => "salecycle_outside_cart_form",
                     :insert_after => "[data-hook='outside_cart_form'], #outside_cart_form[data-hook]",
                     :partial => "spree/shared/salecycle",
                     :disabled => false)
