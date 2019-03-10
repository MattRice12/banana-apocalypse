class CategoriesController < ApplicationController
  def show
    category = Category.find(params.fetch(:id))
    animals = category.animals
    render locals: {category: category, animals: animals}
  end
end
