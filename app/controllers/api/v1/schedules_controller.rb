module Api
  module V1
    class SchedulesController < ApplicationController
      before_filter :check_auth

      respond_to :json

      def check_auth
        authenticate_or_request_with_http_basic do |username,password|
          username="devcon" && password="devconmyanmar"
        end
        warden.custom_failure! if performed?
      end

      def index
        @schedules = Schedule.all
      end

    end
  end
end
