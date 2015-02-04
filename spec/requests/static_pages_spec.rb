require 'rails_helper'

describe 'static pages' do 
  subject { page }

  describe 'home page' do 
    before { visit root_path }

    it { should have_title('Chef-U') }
    it { should have_selector('h1', text: 'Welcome') }
  end

  describe 'about page' do 
    before { visit about_path }  #check to see if about path exists with 'rake routes'

    it { should have_selector('h3', text: 'All recipes') }
    it { should have_selector('p', text: 'simple') }
  end

  describe 'contact page' do 
    before { visit contact_path } 

    it { should have_selector('h3', text: 'Editor: Bennett Adams') }
    it { should have_selector('h4', text: 'email: bennettadams46@gmail.com') }
  end
end
