class SpreeSalecycleHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :outside_cart_form, 'salecycle'
  insert_after :admin_configurations_menu, 'salecycle_settings'
end
