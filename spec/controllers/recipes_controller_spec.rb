require 'rails_helper'

describe RecipesController, type: :controller do 
  describe '#index' do 
    it 'renders index' do 
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe '#show' do 
    it 'renders show' do 
      get :show, id: 1
      expect(response).to render_template(:show)
    end
  end
end    