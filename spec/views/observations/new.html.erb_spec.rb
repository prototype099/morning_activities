require 'spec_helper'

describe "observations/new" do
  before(:each) do
    assign(:observation, stub_model(Observation,
      :title => "MyString",
      :url => "MyString",
      :media => "MyString",
      :disable => ""
    ).as_new_record)
  end

  it "renders new observation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", observations_path, "post" do
      assert_select "input#observation_title[name=?]", "observation[title]"
      assert_select "input#observation_url[name=?]", "observation[url]"
      assert_select "input#observation_media[name=?]", "observation[media]"
      assert_select "input#observation_disable[name=?]", "observation[disable]"
    end
  end
end
