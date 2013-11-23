module Api
  module V1
    class SchedulesController < ApplicationController

      respond_to :json

      def index
        @schedules = Schedule.all.order_by("session_time asc")
      end

    end
  end
end
