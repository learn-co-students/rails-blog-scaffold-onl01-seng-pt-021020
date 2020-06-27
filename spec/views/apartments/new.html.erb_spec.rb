require 'rails_helper'

RSpec.describe "apartments/new", type: :view do
  before(:each) do
    assign(:apartment, Apartment.new(
      :address => "MyString",
      :price => 1.5,
      :description => "MyText",
      :image_url => "MyString"
    ))
  end

  it "renders new apartment form" do
    render

    assert_select "form[action=?][method=?]", apartments_path, "post" do

      assert_select "input[name=?]", "apartment[address]"

      assert_select "input[name=?]", "apartment[price]"

      assert_select "textarea[name=?]", "apartment[description]"

      assert_select "input[name=?]", "apartment[image_url]"
    end
  end
end
