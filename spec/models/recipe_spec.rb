require 'rails_helper'

RSpec.describe Recipe, :type => :model do
  let(:recipe) { Recipe.new(name: 'Oatmeal', category: 'Breakfast', serves: 1, 
                            difficulty: 'Easy', image_file: 'oatmeal.png', 
                            comment: 'Mmmm, good.', source: 'captainobvious.com' ) }

  subject { recipe }

  it { should respond_to(:name) }
  it { should respond_to(:category) }
  it { should respond_to(:serves) }
  it { should respond_to(:difficulty) }
  it { should respond_to(:image_file) }
  it { should respond_to(:comment) }
  it { should respond_to(:source) }

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

      context 'is valid length' do 
        before { recipe.name = 'a' * 120 }
        it { should be_valid }
      end

      context 'too long' do
        before { recipe.name = 'a' * 256 }
        it { should_not be_valid }
      end
    end

    describe 'category' do 
      context 'not present' do 
        before { recipe.category = nil }
        it { should_not be_valid }
      end

      context 'too short' do 
        before { recipe.category = 'a' * 2 }
        it { should_not be_valid }
      end

      context 'is valid length' do 
        before { recipe.category = 'a' * 120 }
        it { should be_valid }
      end

      context 'too long' do 
        before { recipe.category = 'a' * 256 }
        it { should_not be_valid }
      end
    end

    describe 'serves' do 
      context 'not present' do 
        before { recipe.serves = nil }
        it { should_not be_valid }
      end

      context 'is integer' do 
        before { recipe.serves = 4 }
        it { should be_valid }
      end

      context 'is not an integer' do 
        before { recipe.serves = 2.7 }
        it { should_not be_valid }
      end

      context 'is negative integer' do 
        before { recipe.serves = -3 }
        it { should_not be_valid }
      end
    end

    describe 'difficulty' do 
      context 'not present' do 
        before { recipe.difficulty = nil }
        it { should_not be_valid }
      end

      context 'too short' do 
        before { recipe.difficulty = 'a' * 2 }
        it { should_not be_valid }
      end

      context 'is valid length' do 
        before { recipe.difficulty = 'a' * 120 }
        it { should be_valid }
      end

      context 'too long' do 
        before { recipe.difficulty = 'a' * 256 }
        it { should_not be_valid }
      end
    end

    describe 'image_file' do 
      context 'not present' do 
        before { recipe.image_file = nil }
        it { should_not be_valid }
      end

       context 'too short' do 
        before { recipe.image_file = 'a' * 2 }
        it { should_not be_valid }
      end

      context 'is valid length' do 
        before { recipe.image_file = 'a' * 120 }
        it { should be_valid }
      end

      context 'too long' do 
        before { recipe.image_file = 'a' * 256 }
        it { should_not be_valid }
      end
    end

    describe 'comment' do 
      context 'not present' do 
        before { recipe.comment = nil }
        it { should_not be_valid }
      end

      context 'too long' do 
        before { recipe.comment = 'a' * 550 }
        it { should_not be_valid }
      end
    end

    describe 'source' do 
      context 'not present' do 
        before { recipe.source = nil }
        it { should_not be_valid }
      end

      context 'too short' do 
        before { recipe.source = 'a' * 2 }
        it { should_not be_valid }
      end

      context 'is valid length' do 
        before { recipe.source = 'a' * 120 }
        it { should be_valid }
      end

      context 'too long' do 
        before { recipe.source = 'a' * 256 }
        it { should_not be_valid }
      end
    end
  end
end
