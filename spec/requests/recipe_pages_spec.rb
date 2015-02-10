require 'rails_helper'

describe 'recipe pages' do 
  subject { pages }

  describe 'index' do 
    let(:recipe1) { Recipe.create(name: 'Oatmeal', category: 'Breakfast', serves: 1, 
                            difficulty: 'Easy', image_file: 'oatmeal.png', 
                            comment: 'Mmmm, good.', source: 'captainobvious.com') }

    before { visit recipes_path }

    it { should have_title('Recipes') }
    it { should have_selector('h3', text: 'under construction') }
  end

  describe 'show' do 
    let(:recipe) { Recipe.create(name: 'Oatmeal', category: 'Breakfast', serves: 1, 
                            difficulty: 'Easy', image_file: 'oatmeal.png', 
                            comment: 'Mmmm, good.', source: 'captainobvious.com') }

    before { visit recipe_path(recipe.id) }

    it { should have_title(recipe.name) }
    it { should have_selector('h2', text: recipe.name) }
  end

  describe 'new recipe page' do
    before { visit new_recipe_path }

    it { should have_title('Add Recipe') }
    it { should have_selector('h1', text: 'Add Recipe') }

    describe 'create recipe' do 
      let(:submit) { 'Create Recipe' }

      context 'valid information' do
        before do 
          fill_in 'Name', with: 'Oatmeal'
          fill_in 'Category', with: 'Breakfast'
          fill_in 'Serves', with: '1'
          fill_in 'Difficulty', with: 'Easy'
        end

        it 'creates recipe' do
          expect { click_button submit }.to change(Recipe, :count).by(1)
        end

        describe 'after saving' do 
          before { click_button submit }

          it { should have_title('Recipes') }
        end
      end

      context 'invalid information' do 
        it 'does not create recipe' do 
          expect { click_button submit }.not_to change(Recipe, :count)
        end
      end

      describe 'after submission' do 
        before { click_button submit }

        it { should have_title('Add Recipe') }
        it { should have_content('error') }
      end
    end
  end
end

