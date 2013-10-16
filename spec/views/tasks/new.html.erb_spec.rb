require 'spec_helper'

describe "tasks/new.html.erb" do
  before(:each) do
    assign(:task, stub_model(Task,
      :member_id => 1,
      :goal_id => 1,
      :name => "MyString",
      :achievedate => "MyString",
      :date => "MyString"
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path, :method => "post" do
      assert_select "input#task_member_id", :name => "task[member_id]"
      assert_select "input#task_goal_id", :name => "task[goal_id]"
      assert_select "input#task_name", :name => "task[name]"
      assert_select "input#task_achievedate", :name => "task[achievedate]"
      assert_select "input#task_date", :name => "task[date]"
    end
  end
end
