class StaticPagesController < ApplicationController
  def home
    @active = 'home'
  end
  
  def about
    @active = 'about'
  end

  def contact
    @active = 'contact'
  end

end
