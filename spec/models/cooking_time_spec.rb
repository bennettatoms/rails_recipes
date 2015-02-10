require 'rails_helper'

RSpec.describe CookingTime, :type => :model do
  let(:cooking_time){ CookingTime.new(total: 8, prep: 3, cook: 5, inactive: 0) }

  subject { cooking_time }

  it { should respond_to(:total) }
  it { should respond_to(:prep) }
  it { should respond_to(:cook) }
  it { should respond_to(:inactive) }
  
  it { should be_valid }

  describe 'validations' do 
    describe 'total' do 
      context 'not present' do 
        before { cooking_time.total = nil }
        it { should_not be_valid }
      end

      context 'is negative integer' do 
        before { cooking_time.total = -5 }
        it { should_not be_valid }
      end

      context 'is zero' do
        before { cooking_time.total = 0 }
        it { should_not be_valid }
      end

      context 'is not integer' do
        before { cooking_time.total = 11.3 }
        it { should_not be_valid }
      end

      context 'is positive integer' do  
        before { cooking_time.total = 15 }
        it { should be_valid }
      end
    end

    describe 'prep' do 
      context 'not present' do 
        before { cooking_time.prep = nil }
        it { should_not be_valid }
      end

      context 'is negative integer' do 
        before { cooking_time.prep = -5 }
        it { should_not be_valid }
      end

      context 'is not integer' do 
        before { cooking_time.prep = 17.4 }
        it { should_not be_valid }
      end

      context 'is zero' do 
        before { cooking_time.prep = 0 }
        it { should be_valid }
      end

      context 'is positive integer' do 
        before { cooking_time.prep = 15 }
        it { should be_valid }
      end
    end

    describe 'cook' do 
      context 'not present' do 
        before { cooking_time.cook = nil }
        it { should_not be_valid }
      end

      context 'is negative integer' do 
        before { cooking_time.cook = -5 }
        it { should_not be_valid }
      end

      context 'is not integer' do 
        before { cooking_time.cook = 17.4 }
        it { should_not be_valid }
      end

       context 'is zero' do 
        before { cooking_time.cook = 0 }
        it { should be_valid }
      end

      context 'is positive integer' do 
        before { cooking_time.cook = 15 }
        it { should be_valid }
      end
    end

    describe 'inactive' do 
      context 'not present' do 
        before { cooking_time.inactive = nil }
        it { should_not be_valid }
      end

      context 'is negative integer' do 
        before { cooking_time.inactive = -5 }
        it { should_not be_valid }
      end

      context 'is not integer' do 
        before { cooking_time.inactive = 17.4 }
        it { should_not be_valid }
      end

      context 'is zero' do 
        before { cooking_time.inactive = 0 }
        it { should be_valid }
      end

      context 'is positive integer' do 
        before { cooking_time.inactive = 15 }
        it { should be_valid }
      end
    end
  end
end
