require 'spec_helper'

describe "tasks/show.html.erb" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :member_id => 1,
      :goal_id => 1,
      :name => "Name",
      :achievedate => "Achievedate",
      :date => "Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Achievedate/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Date/)
  end
end
