require "application_system_test_case"

class FooTest < ApplicationSystemTestCase
  test "visiting the index" do
     visit root_url
  
     assert_selector "h1", text: "Hello world"
   end
end
