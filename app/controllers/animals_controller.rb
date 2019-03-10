class AnimalsController < ApplicationController

  def index
    animals = Animal.all
    render locals: {animals: animals}
  end

  def show
    animal = Animal.find(params[:id])
    location = animal.facility.location
    category = animal.category
    render locals: {animal: animal, location: location, category: category}
  end

  def new
    animal = Animal.new
    render locals: {animal: animal}
  end

  def create
    animal = Animal.new(animal_params)
    if animal.save!
      redirect_to animal
    else
      render :new, locals: {animal: animal}
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :age, :sex, :facility_id, :category_id)
  end
end
