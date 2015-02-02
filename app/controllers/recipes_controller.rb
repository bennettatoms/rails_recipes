class RecipesController < ApplicationController
  def index
    @active = 'recipes'
    @recipes = RecipeBook.all
  end

  def show
    @active = 'recipes'
    @recipe = RecipeBook.find(params[:id].to_i)
  end
end
