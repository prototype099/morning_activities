require 'spec_helper'

describe "activities/new" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :title => "MyString",
      :organizer_id => 1,
      :media => "MyString",
      :main_url => "MyString",
      :sub_url => "MyString",
      :memo => "MyText",
      :disable => 1
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activities_path, "post" do
      assert_select "input#activity_title[name=?]", "activity[title]"
      assert_select "input#activity_organizer_id[name=?]", "activity[organizer_id]"
      assert_select "input#activity_media[name=?]", "activity[media]"
      assert_select "input#activity_main_url[name=?]", "activity[main_url]"
      assert_select "input#activity_sub_url[name=?]", "activity[sub_url]"
      assert_select "textarea#activity_memo[name=?]", "activity[memo]"
      assert_select "input#activity_disable[name=?]", "activity[disable]"
    end
  end
end
