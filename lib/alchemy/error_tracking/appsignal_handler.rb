# frozen_string_literal: true

require "alchemy/error_tracking"

module Alchemy
  module ErrorTracking
    class AppsignalHandler < BaseHandler
      def self.call(exception)
        return if Rails.env.local?

        ::Appsignal.report_error(exception)
      end
    end
  end
end
