require 'rails_helper'

RSpec.describe Step, :type => :model do
  let(:step){ Step.new(thearray:['Boil water.', 'Add oats.', 'Cook for 5 minutes, 
               stirring.']) }

  subject { step }

  it { should respond_to[:thearray] }

  it { should _be_valid }

  describe 'validations' do 
    describe 'thearray' do 
      context 'not present' do 
        before { step.thearray = nil }
        it { should_not be_valid }
      end
    end
  end
end
