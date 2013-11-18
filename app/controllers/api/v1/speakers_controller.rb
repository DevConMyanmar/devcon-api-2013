module Api
  module V1
    class SpeakersController < ApplicationController

      respond_to :json

      def index
        @speakers = Speaker.all
      end

    end
  end
end
