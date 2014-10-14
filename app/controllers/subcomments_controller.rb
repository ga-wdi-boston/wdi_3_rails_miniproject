class SubcommentsController < ApplicationController
  before_action :find_subcomment, only: [:show, :edit, :update, :destroy]

  def create
    @subcomment = Subcomment.create(subcomment_params)
    redirect_to @subcomment.comment
  end

  def show
  end

  def edit
  end

  def update
    @subcomment.update(subcomment_params)
    redirect_to @subcomment.comment
  end

  def destroy
    @subcomment.destroy
    redirect_to @subcomment.comment
  end



  private
  def find_subcomment
    @subcomment = Subcomment.find(params[:id])
  end

  def subcomment_params
    params.require(:subcomment).permit(:subcomment, :comment_id)
  end


end
