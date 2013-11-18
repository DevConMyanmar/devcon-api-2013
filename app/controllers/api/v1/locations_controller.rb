module Api
  module V1
    class LocationsController < ApplicationController

      respond_to :json

      def index
        @locations = Location.all
      end

    end
  end
end
