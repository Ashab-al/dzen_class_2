require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe 'validations' do 
    let(:user) { {:name => 'Andrei', :last_name => 'Syrytsa'} }

    it 'has create teacher valid' do 
      expect(described_class.new(user)).to be_valid  
    end

    it 'teacher name nil' do 
      expect(described_class.new(user[:name] = nil)).to_not be_valid
    end

    it 'teacher name size 2' do 
      expect(described_class.new(user[:name] = 'ab')).to_not be_valid
    end

    it 'teacher last_name nil' do 
      expect(described_class.new(user[:last_name] = nil)).to_not be_valid
    end

    it 'teacher last_name size 2' do 
      expect(described_class.new(user[:last_name] = 'ab')).to_not be_valid
    end
  end
end
