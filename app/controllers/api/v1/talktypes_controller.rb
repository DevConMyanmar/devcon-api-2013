module Api
  module V1
    class TalktypesController < ApplicationController
      respond_to :json

      def index
       @talktypes = Talktype.all
      end
    end
  end
end
