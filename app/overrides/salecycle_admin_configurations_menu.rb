Deface::Override.new(:virtual_path => "spree/admin/configurations/index",
                     :name => "salecycle_admin_configurations_menu",
                     :insert_bottom => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     :partial => "spree/admin/configurations/salecycle_settings",
                     :disabled => false)
