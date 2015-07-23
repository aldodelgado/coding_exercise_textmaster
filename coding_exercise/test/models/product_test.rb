require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "should not save article without code" do
    product = Product.new
    product.name = 'Fruit tea'
    product.price = 3.11
    assert_not product.save
  end

  test "should not save article without name" do
    product = Product.new
    product.code = 'FR1'
    product.price = 3.11
    assert_not product.save
  end

  test "should not save article without price" do
    product = Product.new
    product.code = 'FR1'
    product.name = 'Fruit tea'
    assert_not product.save
  end

  test "should not negative price" do
    product = Product.new
    product.code = 'FR1'
    product.name = 'Fruit tea'
    product.price = -3.11
    assert_not product.save
  end

end

# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  code       :string           default("")
#  name       :string           default("")
#  price      :decimal(10, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
