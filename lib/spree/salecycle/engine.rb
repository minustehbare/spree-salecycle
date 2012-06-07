module Spree
  module Salecycle
    class Engine < Rails::Engine
      isolate_namespace Spree
      engine_name 'spree_salecycle'
        
      config.autoload_paths += %W(#{config.root}/lib #{config.root}/app/overrides)

      initializer "spree.salecycle.environment", :before => :load_config_initializers do |app|
        Spree::Salecycle::Config = Spree::SalecycleConfiguration.new
      end

      def self.activate
        Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
          Rails.configuration.cache_classes ? require(c) : load(c)
        end
      end

      config.to_prepare &method(:activate).to_proc
    end
  end
end
