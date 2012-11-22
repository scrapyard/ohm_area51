require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "ratings" do
    product =  Product.new(:ratings => ["A", "B", "C"])
    product.save
    assert product.ratings == ["A", "B", "C"]
  end

  test "commas in description" do
    product = Product.new(:description => "A,B,CD123,HEY")
    product.save
    assert product.description ==  "A,B,CD123,HEY"
    product = Product[product.id]
    assert product.description ==  "A,B,CD123,HEY"
  end
end

