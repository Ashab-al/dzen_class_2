require 'rails_helper'

RSpec.describe Course, type: :model do
  let(:course) { {:title => 'Курс молодого бойца', :description => 'description'} }

  it 'has create course' do 
    expect(described_class.new(course)).to be_valid  
  end

  describe 'cannot validate title' do
    it 'cannot be valid if nil has been given' do 
      expect(described_class.new(course[:title] = nil)).to_not be_valid
    end

    it 'cannot be valid if size less than 2' do 
      expect(described_class.new(course[:title] = 'ab')).to_not be_valid
    end
  end

  describe 'cannot validate description' do
    it 'cannot be valid if not nil been given' do 
      expect(described_class.new(course[:description] = nil)).to_not be_valid
    end

    it 'be valid if size more than 2 and string' do 
      expect(described_class.new(course[:description] = 'ab')).to_not be_valid
    end
  end
end
