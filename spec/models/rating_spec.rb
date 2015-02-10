require 'rails_helper'

RSpec.describe Rating, :type => :model do
  let(:rating) { Rating.new(available?: true, total: 4.0, out_of: 4, unit: 'stars') }

  subject { rating }

  it { should respond_to(:available?)}
  it { should respond_to(:total) }
  it { should respond_to(:out_of) }
  it { should respond_to(:unit) }

  it { should be_valid }

  describe 'validations' do 
    describe 'available?' do 
      context 'no rating available' do 
        before { rating.available? = false }
        it {should be_valid }
      end

      context 'rating is available' do 
        before { rating.available? = true }
        it {should be_valid }
      end

      context 'is not boolean value' do 
        before { rating.available? = 'yes' }
        it {should_not be_valid }
      end
    end

    describe 'total' do 
      context 'is empty' do 
        before { rating.total = nil }
        it { should_not be_valid }
      end

      context 'is positive number' do 
        before { rating.total = 3.1 }
        it { should be_valid }
      end

      context 'is negative number' do 
        before { rating.total = -3 }
        it { should_not be_valid }
      end
    end

    describe 'out_of' do 
      context 'not present' do 
        before { rating.out_of = nil }
        it { should_not be_valid }
      end

      context 'is positive integer' do 
        before { rating.out_of = 5 }
        it { should be_valid }
      end

      context 'is zero' do 
        before { rating.out_of = 0 }
        it { should_not be_valid }
      end
    end

    describe 'unit' do 
      context 'not present' do 
        before { rating.unit = nil }
        it { should_not be_valid }
      end

      context 'too long' do 
        before { rating.unit = 'a' * 256 }
        it { should_not be_valid }
      end

      context 'is valid length' do 
        before { rating.unit = 'a' * 100 }
        it { should be_valid }
      end
      
      context 'too short' do 
        before { rating.unit = 'a' * 2 }
        it { should_not be_valid } 
      end
    end
  end
end
