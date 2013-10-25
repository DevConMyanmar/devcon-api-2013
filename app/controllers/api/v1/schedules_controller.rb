module Api
  module V1
    class SchedulesController < ApplicationController
      respond_to :json

      def index
        @schedules = Schedule.all
        render :json => @schedules.to_json, :status => 200 and return
      end

    end
  end
end
