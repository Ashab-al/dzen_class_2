require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'validations' do 
    let(:user) { { :name => 'Ashab', :last_name => 'Alhazurov' } }

    it 'has create student valid' do 
      expect(described_class.new(user)).to be_valid  
    end

    it 'student name nil' do 
      expect(described_class.new(user[:name] = nil)).to_not be_valid
    end

    it 'student name size 2' do 
      expect(described_class.new(user[:name] = 'ab')).to_not be_valid
    end

    it 'student last_name nil' do 
      expect(described_class.new(user[:last_name] = nil)).to_not be_valid
    end

    it 'student last_name size 2' do 
      expect(described_class.new(user[:last_name] = 'ab')).to_not be_valid
    end
  end
end
