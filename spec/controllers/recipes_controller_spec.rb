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
end    


