require 'spec_helper'

describe "activities/index" do
  before(:each) do
    assign(:activities, [
      stub_model(Activity,
        :title => "Title",
        :organizer_id => 1,
        :media => "Media",
        :main_url => "Main Url",
        :sub_url => "Sub Url",
        :memo => "MyText",
        :disable => 2
      ),
      stub_model(Activity,
        :title => "Title",
        :organizer_id => 1,
        :media => "Media",
        :main_url => "Main Url",
        :sub_url => "Sub Url",
        :memo => "MyText",
        :disable => 2
      )
    ])
  end

  it "renders a list of activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Media".to_s, :count => 2
    assert_select "tr>td", :text => "Main Url".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
