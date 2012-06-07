Deface::Override.new(:virtual_path => "spree/checkout/edit",
                     :name => "salecycle_checkout_summary_box",
                     :insert_after => "[data-hook='checkout_summary_box'], #checkout_summary_box[data-hook]",
                     :partial => "spree/shared/salecycle",
                     :disabled => false)
