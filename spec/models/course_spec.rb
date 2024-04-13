require 'rails_helper'

RSpec.describe Course, type: :model do
  let(:course) { {:title => 'Курс молодого бойца', :description => 'description'} }

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
end
