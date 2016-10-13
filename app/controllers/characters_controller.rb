class CharactersController < ApplicationController
  def index
    if characters_path
      @characters = Character.all
    else
      @house = House.find(params[:house_id])
      @characters = Character.all
    end
  end

  def show
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  def new
    @house = House.find(params[:house_id])
    @character = Character.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create!(character_params)

    redirect_to house_path(@house)
  end

  def edit
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  def update
    @house = House.find(params[:house_id])
    @character = @house.characters.update(character_params)

    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:house_id])
    @character = @house.characters.find(params[:id])
    @character.destroy

    redirect_to house_path(@house)
  end

  private
  def character_params
    params.require(:character).permit(:name, :origin, :img_url)
  end
end
