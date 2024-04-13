require 'rails_helper'

RSpec.describe Lesson, type: :model do
  let(:lesson) { {:title => 'Урок молодого бойца', :description => 'description', :tasks => 'Сделать 1000 отжиманий'} }

  it 'has create lesson' do 
    expect(described_class.new(lesson)).to be_valid  
  end

  describe 'cannot validate title' do
    it 'cannot be valid if nil has been given' do 
      expect(described_class.new(lesson[:title] = nil)).to_not be_valid
    end

    it 'cannot be valid if size less than 2' do 
      expect(described_class.new(lesson[:title] = 'ab')).to_not be_valid
    end
  end

  describe 'cannot validate description' do
    it 'cannot be valid if not nil been given' do 
      expect(described_class.new(lesson[:description] = nil)).to_not be_valid
    end

    it 'be valid if size more than 2 and string' do 
      expect(described_class.new(lesson[:description] = 'ab')).to_not be_valid
    end
  end

  describe 'cannot validate tasks' do
    it 'cannot be valid if not nil been given' do 
      expect(described_class.new(lesson[:tasks] = nil)).to_not be_valid
    end

    it 'be valid if size more than 2 and string' do 
      expect(described_class.new(lesson[:tasks] = 'ab')).to_not be_valid
    end
  end
end
