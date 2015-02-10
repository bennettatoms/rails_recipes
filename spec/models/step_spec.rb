require 'rails_helper'

RSpec.describe Step, :type => :model do
  let(:step){ Step.new(text:['Boil water.', 'Add oats.', 'Cook for 5 minutes, 
               stirring.']) }

  subject { step }

  it { should respond_to[:text] }

  it { should be_valid }

  describe 'validations' do 
    describe 'text' do 
      context 'not present' do 
        before { step.thearray = nil }
        it { should_not be_valid }
      end
    end
  end
end
