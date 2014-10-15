class PartiesController < ApplicationController

  before_action :set_party, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @party = Party.new
    @parties = Party.all
  end

  def create
    @party = Party.new(party_params)
    @party.user = current_user
    @party.save
    redirect_to root_path
  end

  def edit
  end

  def show
    @character = Character.new(name: "Generic Doofus", job: :tank)
  end

  def update
    @party.update(party_params)
    redirect_to @party
  end

  def destroy
    @party.destroy
    redirect_to root_path
  end


  private

    def set_party
      @party = Party.find(params[:id])
    end

    def party_params
      params.require(:party).permit(:name, :goal, :motto)
    end
end
