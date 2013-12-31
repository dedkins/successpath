class TasksController < ApplicationController
  
  def achieved
    @task = Task.find(params[:id])

    respond_to do |format|
      @task.achievedate = Date.today
      @task.save

      if @task.goal_id.present?
        format.html { redirect_to goal_path(@task.goal_id)}
      else
        format.html {redirect_to tasks_path}
      end
      format.json
    end
  end

  # GET /tasks
  # GET /tasks.json
  def index
    if member_signed_in?
      @opentasks = Task.where("member_id = ? and achievedate is ? and duedate is not ?", current_member, nil, nil).order("duedate ASC")
      @closedtasks = Task.where("member_id = ? and achievedate is not ?", current_member, nil)
    else
      @opentasks = Task.limit(5)
      @closedtasks = Task.limit(2)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new
    if params[:goal].present?
      @goal = Goal.find(params[:goal])
    else
      @goals = Goal.find_all_by_member_id(current_member)
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
    if @task.goal_id != nil
      @goal = Goal.find(@task.goal_id)
    end
    @goals = Goal.find_all_by_member_id(current_member)
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = current_member.tasks.build(params[:task])
    if params[:goal].present?
      @goal = Goal.find(params[:goal])
    else
      @goals = Goal.find_all_by_member_id(current_member)
    end

    respond_to do |format|
      if @task.save
        if @task.goal_id.present?
          format.html { redirect_to goal_path(@task.goal_id) }
        else
        format.html { redirect_to tasks_path, notice: 'Task was successfully created.' }
        end
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])
    @goals = Goal.find_all_by_member_id(current_member)

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to tasks_path, notice: 'Task was successfully updated!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      if @task.goal_id.present?
        format.html { redirect_to goal_path(@task.goal_id)}
      else
      format.html { redirect_to tasks_url }
    end
      format.json { head :no_content }
    end
  end
end
