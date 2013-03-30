require 'spec_helper'

describe "observations/show" do
  before(:each) do
    @observation = assign(:observation, stub_model(Observation,
      :title => "Title",
      :url => "Url",
      :media => "Media",
      :disable => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Url/)
    rendered.should match(/Media/)
    rendered.should match(//)
  end
end
