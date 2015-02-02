require 'rails_helper'

describe 'recipes pages' do 
  subject { page }

  describe 'index page' do 
    before { visit recipes_path }

    it { should have_selector('h3', text: 'under construction') }
  end

  describe 'show page' do 
    before { visit recipe_path(1) }

    it { should have_selector('h2', text: 'Ginger Carrot Soup' ) }
  end
end
