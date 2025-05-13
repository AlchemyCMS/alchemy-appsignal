require_relative "../error_tracking/appsignal_handler"

module Alchemy
  module Appsignal
    class Engine < ::Rails::Engine
      initializer "alchemy.appsignal" do
        Alchemy::ErrorTracking.notification_handler = Alchemy::ErrorTracking::AppsignalHandler
      end
    end
  end
end
