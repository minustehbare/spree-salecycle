Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resource :salecycle_settings, :only => [:show, :edit, :update]
  end
end
