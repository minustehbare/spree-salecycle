Deface::Override.new(:virtual_path => "spree/shared/_order_details",
                     :name => "salecycle_order_details_total",
                     :insert_after => "[data-hook='order_details_total'], #order_details_total[data-hook]",
                     :partial => "spree/shared/salecycle",
                     :disabled => false)
