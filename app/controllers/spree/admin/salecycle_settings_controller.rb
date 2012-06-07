module Spree
  module Admin
    class SalecycleSettingsController < BaseController

      def update
        params[:preferences].each do |name, value|
          next unless Spree::Salecycle::Config.has_preference? name
          Spree::Salecycle::Config[name] = value
        end
        
        respond_to do |format|
          format.html {
            flash[:notice] = 'SaleCycle settings successfully updated'
            redirect_to admin_salecycle_settings_path
          }
        end
      end
      
    end
  end      
end
