module AcaShopMarket
  class Engine < ::Rails::Engine
    isolate_namespace AcaShopMarket

    config.generators do |g|
      g.orm :mongoid 
      g.template_engine :slim
      g.test_framework :rspec
      g.test_framework :rspec, :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false    
    end
  end
end
