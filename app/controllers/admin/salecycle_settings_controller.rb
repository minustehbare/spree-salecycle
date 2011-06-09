class Admin::SalecycleSettingsController < Admin::BaseController
  
  def show
  end
  
  def edit
  end
  
  def update
    Spree::Config.set(params[:preferences])

    respond_to do |format|
      format.html {
        flash[:notice] = 'SaleCycle settings successfully updated'
        redirect_to admin_salecycle_settings_path
      }
    end
  end
  
end
