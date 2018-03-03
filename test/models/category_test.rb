require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(name: "Tech")
  end
  
  test "category should be valid" do
    assert @category.valid?
   end

   
end
