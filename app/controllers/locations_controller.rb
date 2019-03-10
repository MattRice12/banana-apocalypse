class LocationsController < ApplicationController
  def show
    location = Location.find(params[:id])
    animals = location.animals
    render locals:  {location: location, animals: animals}
  end
end
