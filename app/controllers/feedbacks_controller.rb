class FeedbacksController < InheritedResources::Base
  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id)
  end

  def new
    @feedback = Feedback.new
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end

  def create
    @feedback = Feedback.new(params[:feedback])
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
  end

end
