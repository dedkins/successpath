class AffirmationsController < ApplicationController
  # GET /affirmations
  # GET /affirmations.json
  def index
    @affirmations = Affirmation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @affirmations }
    end
  end

  # GET /affirmations/1
  # GET /affirmations/1.json
  def show
    @affirmation = Affirmation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @affirmation }
    end
  end

  # GET /affirmations/new
  # GET /affirmations/new.json
  def new
    @affirmation = Affirmation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @affirmation }
    end
  end

  # GET /affirmations/1/edit
  def edit
    @affirmation = Affirmation.find(params[:id])
  end

  # POST /affirmations
  # POST /affirmations.json
  def create
    @affirmation = current_member.affirmations.build(params[:affirmation])

    respond_to do |format|
      if @affirmation.save
        format.html { redirect_to affirmations_path, notice: 'Affirmation was successfully created.' }
        format.json { render json: @affirmation, status: :created, location: @affirmation }
      else
        format.html { render action: "new" }
        format.json { render json: @affirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /affirmations/1
  # PUT /affirmations/1.json
  def update
    @affirmation = Affirmation.find(params[:id])

    respond_to do |format|
      if @affirmation.update_attributes(params[:affirmation])
        format.html { redirect_to affirmations_path, notice: 'Affirmation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @affirmation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affirmations/1
  # DELETE /affirmations/1.json
  def destroy
    @affirmation = Affirmation.find(params[:id])
    @affirmation.destroy

    respond_to do |format|
      format.html { redirect_to affirmations_url }
      format.json { head :no_content }
    end
  end
end
