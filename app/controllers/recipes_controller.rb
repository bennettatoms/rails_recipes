class RecipesController < ApplicationController
  def index
    @active = 'recipes'
    search_term = params[:search]
    @recipes = search_term ? RecipeBook.search(search_term) : RecipeBook.all
  end

  def show
    @active = 'recipes'
    @recipe = RecipeBook.find(params[:id].to_i)
  end
end
