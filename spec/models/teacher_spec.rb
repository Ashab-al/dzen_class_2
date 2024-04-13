require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe 'validations' do 
    let(:user) { {:name => 'Andrei', :last_name => 'Syrytsa'} }

    it 'has create teacher valid' do 
      expect(described_class.new(user)).to be_valid  
    end

    describe 'cannot validate name' do
      it 'cannot be valid if nil has been given' do 
        expect(described_class.new(user[:name] = nil)).to_not be_valid
      end
  
      it 'cannot be valid if size less than 2' do 
        expect(described_class.new(user[:name] = 'ab')).to_not be_valid
      end
    end
  
    describe 'cannot validate last_name' do
      it 'cannot be valid if not nil been given' do 
        expect(described_class.new(user[:last_name] = nil)).to_not be_valid
      end
  
      it 'be valid if size more than 2 and string' do 
        expect(described_class.new(user[:last_name] = 'ab')).to_not be_valid
      end
    end
    
  end
end
