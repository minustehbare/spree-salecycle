module Spree
  class SalecycleConfiguration < Preferences::Configuration
    preference :salecycle_client_id, :string
    preference :salecycle_user_opt_out_method, :string
    preference :salecycle_currency_type, :string
    preference :salecycle_custom_field_1, :string
    preference :salecycle_custom_field_2, :string
    if defined? SpreeMultiDomain and Spree::Store.table_exists?
      Spree::Store.all.each do |s|
        preference "salecycle_#{s.code}_client_id", :string
      end
    end
  end
end
