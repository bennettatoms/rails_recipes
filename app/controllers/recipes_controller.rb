class RecipesController < ApplicationController
  def index
    @active = 'recipes'
    search_term = params[:search]
    @recipes = search_term ? Recipe.search(search_term) : RecipeBook.all
  end

  def show
    @active = 'recipes'
    @recipe = Recipe.find(params[:id])
  end

  def new
    @active = 'recipes'
    @recipe = Recipe.new
  end

  def create
    @active = 'recipes'
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:success] = "Recipe created."
      redirect_to recipes_path
    else
      render 'new'
    end
  end

  def edit
    @active = 'recipes'
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      flash[:success] = "Item updated."
      redirect_to recipe_path(@recipe.id)
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:success] = "Item deleted."
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :category, :serves, :difficulty, 
                                   :image_file, :comment, :source)
  end
end
