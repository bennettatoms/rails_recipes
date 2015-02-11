require 'rails_helper'

describe RecipesController, type: :controller do 
  let(:recipe1) { Recipe.create(name: 'Oatmeal', category: 'Breakfast', serves: 1, 
                            difficulty: 'Easy', image_file: 'oatmeal.png', 
                            comment: 'Mmmm, good.', source: 'captainobvious.com') }

  describe 'GET #index' do 
    it 'renders index' do 
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #show' do 
    it 'renders show' do 
      get :show, id: recipe1.id
      expect(response).to render_template(:show)
    end

    it 'assigns the correct recipe' do 
      get :show, id: recipe1.id
      expect(assigns(:recipe)).to eq(recipe1)
    end
  end

  describe 'GET #new' do 
    it 'renders new' do 
      get :new
      expect(response).to render_template(:new)
    end

    it 'assigns a new recipe' do 
      get :new
      expect(assigns(:recipe)).to be_a_new(Recipe)
    end
  end

  describe 'GET #edit' do 
    let(:recipe_for_edit) { Recipe.create(name: 'Oatmeal', category: 'Breakfast', serves: 1, 
                                          difficulty: 'Easy', image_file: 'oatmeal.png', 
                                          comment: 'Mmmm, good.', source: 'captainobvious.com') }
    it 'renders edit' do 
      get :edit, id: recipe_for_edit.id
      expect(response).to render_template(:edit)
    end

    it 'assigns correct recipe' do 
      get :edit, id: recipe_for_edit.id
      expect(assigns(:recipe)).to eq(recipe_for_edit)
    end
  end

  describe 'POST #create' do 
    context 'valid attributes' do 
      let(:valid_attributes) { { name: 'Oatmeal', category: 'Breakfast', serves: 1, 
                                 difficulty: 'Easy', image_file: 'oatmeal.png', 
                                 comment: 'Mmmm, good.', source: 'captainobvious.com' } }
      it 'create a new recipe' do 
        expect{
          post :create, recipe: valid_attributes
        }.to change(Recipe, :count).by(1)
      end

      it 'redirect to recipes#index' do 
        post :create, recipe: valid_attributes
        expect(response).to redirect_to(recipes_path)
      end
    end

    context 'invalid attributes' do 
      let(:invalid_attributes) { { name: '' } }
      it 'does not create new recipe' do 
        expect{
          post :create, recipe: invalid_attributes
        }.to_not change(Recipe, :count)
      end

      it 're-renders new' do 
        post :create, recipe: invalid_attributes
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'PATCH #update' do 
    let(:recipe_for_edit){ Recipe.create(name: 'Oatmeal', category: 'Breakfast', serves: 1, 
                                         difficulty: 'Easy', image_file: 'oatmeal.png', 
                                         comment: 'Mmmm, good.', source: 'captainobvious.com') }
    context 'valid attributes' do 
      it 'updates recipe' do 
        patch :update, id: recipe_for_edit.id, recipe: { name: 'Oat Soup' }
        recipe_for_edit.reload
        expect(recipe_for_edit.name).to eq('Oat Soup')
      end

      it 'redirects to recipes#show' do 
        patch :update, id: recipe_for_edit.id, recipe: { name: 'Oat Soup' }
        expect(response).to redirect_to(recipe_path(recipe_for_edit.id))
      end
    end

    context 'invalid attributes' do 
      it 'does not update recipe' do 
        patch :update, id: recipe_for_edit.id, recipe: { name: '' }
        recipe_for_edit.reload
        expect(recipe_for_edit.name).to eq('Oatmeal')
      end

      it 're-renders edit' do 
        patch :update, id: recipe_for_edit.id, item: { name: '' }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe 'DELETE #destroy' do 
    it 'deletes requested recipe' do 
      let(:recipe_for_removal) { Recipe.create(name: 'Oatmeal', category: 'Breakfast', serves: 1, 
                                           difficulty: 'Easy', image_file: 'oatmeal.png', 
                                           comment: 'Mmmm, good.', source: 'captainobvious.com') }
      expect{
        delete :destroy, id: recipe_for_edit.id
      }.to change(Recipe, :count).by(-1)
    end

    it 'redirects to index' do 
      let(:recipe_for_removal) { Recipe.create(name: 'Oatmeal', category: 'Breakfast', serves: 1, 
                                           difficulty: 'Easy', image_file: 'oatmeal.png', 
                                           comment: 'Mmmm, good.', source: 'captainobvious.com') }
      delete :destroy, id: recipe_for_removal.id
      expect(response).to redirect_to(recipes_path)
    end
  end
end    


