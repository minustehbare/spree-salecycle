class SpreeSalecycleHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :outside_cart_form, 'shared/salecycle'
  insert_after :checkout_summary_box, 'shared/salecycle'
  insert_after :order_details_total, 'shared/salecycle'
  insert_after :admin_configurations_menu, 'salecycle_settings'
end
