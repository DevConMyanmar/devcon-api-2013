module Api
  module V1
    class FeedbacksController < ApplicationController

      respond_to :json

      def index
        @feedbacks = Feedback.all
      end
    end
  end
end
