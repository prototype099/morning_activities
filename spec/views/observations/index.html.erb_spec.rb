require 'spec_helper'

describe "observations/index" do
  before(:each) do
    assign(:observations, [
      stub_model(Observation,
        :title => "Title",
        :url => "Url",
        :media => "Media",
        :disable => ""
      ),
      stub_model(Observation,
        :title => "Title",
        :url => "Url",
        :media => "Media",
        :disable => ""
      )
    ])
  end

  it "renders a list of observations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Media".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
