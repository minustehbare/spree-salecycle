class SpreeSalecycleHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  Deface::Override.new(:virtual_path => "orders/edit",
                       :name => "salecycle_outside_cart_form",
                       :insert_after => "[data-hook='outside_cart_form'], #outside_cart_form[data-hook]",
                       :partial => "shared/salecycle",
                       :disabled => false)
  Deface::Override.new(:virtual_path => "checkout/edit",
                       :name => "salecycle_checkout_summary_box",
                       :insert_after => "[data-hook='checkout_summary_box'], #checkout_summary_box[data-hook]",
                       :partial => "shared/salecycle",
                       :disabled => false)
  Deface::Override.new(:virtual_path => "shared/_order_details",
                       :name => "salecycle_order_details_total",
                       :insert_after => "[data-hook='order_details_total'], #order_details_total[data-hook]",
                       :partial => "shared/salecycle",
                       :disabled => false)
  Deface::Override.new(:virtual_path => "admin/configurations/index",
                       :name => "salecycle_admin_configurations_menu",
                       :insert_bottom => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                       :partial => "admin/configurations/salecycle_settings",
                       :disabled => false)
end
