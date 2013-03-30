require 'spec_helper'

describe "observations/edit" do
  before(:each) do
    @observation = assign(:observation, stub_model(Observation,
      :title => "MyString",
      :url => "MyString",
      :media => "MyString",
      :disable => ""
    ))
  end

  it "renders the edit observation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", observation_path(@observation), "post" do
      assert_select "input#observation_title[name=?]", "observation[title]"
      assert_select "input#observation_url[name=?]", "observation[url]"
      assert_select "input#observation_media[name=?]", "observation[media]"
      assert_select "input#observation_disable[name=?]", "observation[disable]"
    end
  end
end
