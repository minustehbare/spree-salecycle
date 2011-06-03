class SpreeSalecycleHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :outside_cart_form, 'salecycle'
end
