require "rails_helper"
require "alchemy/error_tracking/appsignal_handler"

module Alchemy
  module ErrorTracking
    RSpec.describe AppsignalHandler do
      let(:exception) { StandardError.new("Test exception") }

      describe ".call" do
        context "when environment is local" do
          it "does not report the exception to Appsignal" do
            allow(::Rails).to receive(:env) { double("Rails::Env", local?: true) }

            expect(::Appsignal).not_to receive(:report_error)
            AppsignalHandler.call(exception)
          end
        end

        context "when environment is production" do
          it "reports the exception to Appsignal" do
            allow(::Rails).to receive(:env) { double("Rails::Env", local?: false) }

            expect(::Appsignal).to receive(:report_error).with(exception)
            AppsignalHandler.call(exception)
          end
        end
      end
    end
  end
end
