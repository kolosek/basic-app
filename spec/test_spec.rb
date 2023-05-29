require 'rails_helper'

RSpec.describe 'Item' do
  let(:item) do
    Item.create!(
      name: 'MyString'
    )
  end

  it 'test something' do
    expect(item).to be_valid
  end

  xit 'test something 2' do
    expect(true).to be true
  end

  it 'test something 3' do
    expect(true).to be true
  end

  it 'test something 4' do
    skip("test skipped")
    expect(true).to be true
  end

  it 'test something 5' do
    expect(true).to be true
  end

  it 'test something 6' do
    expect(true).to be true
  end
end
