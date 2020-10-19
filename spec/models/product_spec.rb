require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should save a product with all four fields' do
      @category = Category.new(:name => "Test")
      @product = Product.new(:name => "Testing", :price => 100, :quantity => 50, :category => @category)
      @product.save
      expect(@product).to be_present
    end

    it 'should not save a product if name field is not provided' do
      @category = Category.new(:name => "Test")
      @product = Product.new(:name => nil, :price => 100, :quantity => 50, :category => @category)
      @product.save
      expect(@product.errors.full_messages).to be
    end

    it 'should not save a product if price field is not provided' do
      @category = Category.new(:name => "Test")
      @product = Product.new(:name => "Testing", :price => nil, :quantity => 50, :category => @category)
      @product.save
      expect(@product.errors.full_messages).to be
    end

    it 'should not save a product if quantity field is not provided' do
      @category = Category.new(:name => "Test")
      @product = Product.new(:name => "Testing", :price => 100, :quantity => nil, :category => @category)
      @product.save
      expect(@product.errors.full_messages).to be
    end

    it 'should not save a product if category field is not provided' do
      @category = Category.new(:name => "Test")
      @product = Product.new(:name => "Testing", :price => 100, :quantity => 50, :category => nil)
      @product.save
      expect(@product.errors.full_messages).to be
    end
  end
end
