require 'spec_helper'

describe "tasks/index.html.erb" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :member_id => 1,
        :goal_id => 1,
        :name => "Name",
        :achievedate => "Achievedate",
        :date => "Date"
      ),
      stub_model(Task,
        :member_id => 1,
        :goal_id => 1,
        :name => "Name",
        :achievedate => "Achievedate",
        :date => "Date"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Achievedate".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Date".to_s, :count => 2
  end
end
