require 'spec_helper'

describe "tasks/edit.html.erb" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :new_record? => false,
      :member_id => 1,
      :goal_id => 1,
      :name => "MyString",
      :achievedate => "MyString",
      :date => "MyString"
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => task_path(@task), :method => "post" do
      assert_select "input#task_member_id", :name => "task[member_id]"
      assert_select "input#task_goal_id", :name => "task[goal_id]"
      assert_select "input#task_name", :name => "task[name]"
      assert_select "input#task_achievedate", :name => "task[achievedate]"
      assert_select "input#task_date", :name => "task[date]"
    end
  end
end
