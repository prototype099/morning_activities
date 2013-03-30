require 'spec_helper'

describe "activities/show" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :title => "Title",
      :organizer_id => 1,
      :media => "Media",
      :main_url => "Main Url",
      :sub_url => "Sub Url",
      :memo => "MyText",
      :disable => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/Media/)
    rendered.should match(/Main Url/)
    rendered.should match(/Sub Url/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
