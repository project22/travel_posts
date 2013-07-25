require 'spec_helper'

describe "locations/new" do
  before(:each) do
    assign(:location, stub_model(Location,
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", locations_path, "post" do
      assert_select "input#location_latitude[name=?]", "location[latitude]"
      assert_select "input#location_longitude[name=?]", "location[longitude]"
      assert_select "input#location_name[name=?]", "location[name]"
      assert_select "input#location_user_id[name=?]", "location[user_id]"
    end
  end
end
