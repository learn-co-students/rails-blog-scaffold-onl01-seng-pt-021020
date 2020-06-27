require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        :address => "Address",
        :price => 2.5,
        :description => "MyText",
        :image_url => "Image Url"
      ),
      Apartment.create!(
        :address => "Address",
        :price => 2.5,
        :description => "MyText",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
