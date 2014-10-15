class CharactersController < ApplicationController

  before_action :set_character, only: [:destroy, :show, :edit, :update]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    redirect_to root_path
  end

  def create
    @character = Character.create(character_params)
    redirect_to :back
  end

  def destroy
    @character.destroy
    redirect_to :back
  end

  def show
  end

  def edit
  end

  def update
    @character.update(character_params)
    redirect_to @character
  end

  private
    def character_params
      params.require(:character).permit(:name, :job, :profile, :party_id)
    end

    def set_character
      @character = Character.find(params[:id])
    end

end
