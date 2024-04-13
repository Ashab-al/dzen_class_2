require 'rails_helper'

RSpec.describe Lesson, type: :model do
  let(:lesson) { {:title => 'Урок молодого бойца', :description => 'description', :tasks => 'Сделать 1000 отжиманий'} }

  it 'has create lesson' do 
    expect(described_class.new(lesson)).to be_valid  
  end

  it 'lesson has title nil or size 2' do 
    expect(described_class.new(lesson[:title] = nil)).to_not be_valid
    expect(described_class.new(lesson[:title] = 'ab')).to_not be_valid
  end

  it 'lesson has description nil or size 2' do 
    expect(described_class.new(lesson[:description] = nil)).to_not be_valid
    expect(described_class.new(lesson[:description] = 'ab')).to_not be_valid
  end

  it 'lesson has tasks nil or size 2' do 
    expect(described_class.new(lesson[:tasks] = nil)).to_not be_valid
    expect(described_class.new(lesson[:tasks] = 'ab')).to_not be_valid
  end
end
