class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to topics_path
    else
      render 'new'
    end
  end

  def show
    @topic = Topic.find(params[:id])
  end



  private
    def topic_params
      params.require(:topic).permit(:question, :name)
    end


end
