require 'rails_helper'

RSpec.describe Ingredient, :type => :model do
  let(:ingredient){ Ingredient.new(name: 'oats', quantity: 0.5, unit: 'cup') }

  subject { ingredient }
 
  it { should respond_to[:name] }
  it { should respond_to[:quantity] }
  it { should respond_to[:unit] }

  it { should be_valid }

  describe 'validations' do 
    describe 'name' do 
      context 'not present' do 
        before { ingredient.name = nil }
        it { should_not be_valid }
      end

      context 'too short' do 
        before { ingredient.name = 'a' * 2 }
        it { should_not be_valid }
      end

      context 'too long' do 
        before { ingredient.name = 'a' * 256 }
        it { should_not be_valid }
      end

    describe 'quantity' do 
      context 'not present' do 
        before { ingredient.quantity = nil }
        it { should_not be_valid }

        before { ingredient.quantity = 'to taste' }
        it { should be_valid } 
      end

      context 'negative amount' do 
        before { ingredient.quantity <= 0 }
        it { should_not be_valid }
      end
    end 

    describe 'unit' do 
      context 'not present' do 
        before { ingredient.unit = nil }
        it { should_not be_valid }

        before { ingredient.quantity = 'to taste' }
        it { should be_valid } 
      end

      context 'too short' do 
        before { ingredient.name = 'a' * 2 }
        it { should_not be_valid }
      end

      context 'too long' do 
        before { ingredient.unit = 'a' * 256 }
        it { should_not be_valid }
      end
    end 
  end
end
