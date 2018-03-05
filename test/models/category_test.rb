require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(name: "Tech")
  end
  
  test "category should be valid" do
    assert @category.valid?
   end


#Just an example test I created before adding name validations to the 
#category model file. Demonstrates how negative assertions work
  test "name should be present" do
    @category.name = " "
    assert_not @category.valid? #(negative assertions; if "not" valid then pass)
  end
   
end
