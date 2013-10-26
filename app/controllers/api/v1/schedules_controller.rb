module Api
  module V1
    class SchedulesController < ApplicationController

      respond_to :json

      def index
        @schedules = Schedule.all
      end

    end
  end
end
