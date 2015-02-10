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

  def new
    @active = 'recipes'
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:success] = "Recipe created."
      redirect_to recipes_path
    else
      render 'new'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :category, :serves, :difficulty, 
                                   :image_file, :comment, :source)
  end
end
