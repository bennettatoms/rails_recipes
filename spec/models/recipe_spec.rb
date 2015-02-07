require 'rails_helper'

describe 'Recipe' do 
  let(:recipe) { Recipe.new(name: 'Oatmeal', category: 'Breakfast',
                            ingredients: { 'cup oats' => 0.5, 
                            'cup water' => 1 }, preparation: ['Boil water.', 
                            'Add oats.', 'Cook for 5 minutes, stirring.'], 
                            cooking_time: { total: 8, prep: 3, cook: 5, 
                            inactive: 0 }, serves: 1, difficulty: 'Easy', 
                            rating: [4.0, 4.0, 'stars'], image_file: 'oatmeal.png', 
                            comment: 'Mmmm, good.', source: 'captainobvious.com' ) }

  subject { recipe }

  it { should respond_to[:name] }
  it { should respond_to[:category] }
  it { should respond_to[:ingredients] }
  it { should respond_to[:preparation] }
  it { should respond_to[:cooking_time] }
  it { should respond_to[:serves] }
  it { should respond_to[:difficulty] }
  it { should respond_to[:rating] }
  it { should respond_to[:image_file] }
  it { should respond_to[:comment] }
  it { should respond_to[:source] }

  it { should be_valid }

  describe 'validations' do 
    describe 'name' do 
      context 'not present' do 
        before { recipe.name = nil }
        it { should_not be_valid }
      end

      context 'too short' do 
        before { recipe.name = 'a' * 2 }
        it { should_not be_valid }
      end

      context 'too long' do
        before { recipe.name = 'a' * 250 }
        it { should_not be_valid }
      end
    end

    describe 'category' do 
      context 'not present' do 
        before { recipe.category = nil }
        it { should_not be_valid }
      end

      context 'too short' do 
        before { recipe.category = 'a' * 3 }
        it { should_not be_valid }
      end

      context 'too long' do 
        before { recipe.category = 'a' * 250 }
        it { should_not be_valid }
      end
    end

    describe 'ingredients' do 
      context 'not present' do 
        before { recipe.ingredients = nil }
        it { should_not be_valid }
      end

      context 'too short' do 
        before { recipe.ingredients = 'a' * 3 }
        it { should_not be_valid }
      end
    end

    describe 'preparation' do 
      context 'not present' do 
        before { recipe.preparation = nil }
        it { should_not be_valid }
      end
    end

    describe 'cooking_time' do 
      context 'not present' do 
        before { recipe.cooking_time = nil }
        it { should_not be_valid }
      end
    end

    describe 'serves' do 
      context 'not present' do 
        before { recipe.serves = nil }
        it { should_not be_valid }
      end

      context 'non-zero' do 
        before { recipe.serves.to_i <= 0 }
        it { should_not be_valid }
      end
    end

    describe 'difficulty' do 
      context 'not present' do 
        before { recipe.difficulty = nil }
        it { should_not be_valid }
      end

      context 'too long' do 
        before { recipe.difficulty = 'a' * 250 }
        it { should_not be_valid }
      end
    end

    describe 'rating' do 
      context 'not present' do 
        before { recipe.rating = nil }
        it { should_not be_valid }
      end
    end

    describe 'image_file' do 
      context 'not present' do 
        before { recipe.image_file = nil }
        it { should_not be_valid }
      end
    end

    describe 'comment' do 
      context 'not present' do 
        before { recipe.comment = nil }
        it { should_not be_valid }
      end

      context 'too short' do 
        before { recipe.comment = 'a' * 3 }
        it { should_not be_valid }
      end

      context 'too long' do 
        before { recipe.comment = 'a' * 3 }
        it { should_not be_valid }
      end
    end

    describe 'source' do 
      context 'not present' do 
        before { recipe.source = nil }
        it { should_not be_valid }
      end
    end
  end
end

