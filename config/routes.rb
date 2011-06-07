Rails.application.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resource :salecycle_settings
  end
end
