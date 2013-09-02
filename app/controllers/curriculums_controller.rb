class CurriculumsController < ApplicationController
  # GET /curriculums
  # GET /curriculums.json
  def index
    @curriculums = Curriculum.all
   

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @curriculums }
    end
  end

  # GET /curriculums/1
  # GET /curriculums/1.json
  def show
    @curriculum = Curriculum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @curriculum }
    end
  end

  # GET /curriculums/new
  # GET /curriculums/new.json
  def new
    @curriculum = Curriculum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @curriculum }
    end
  end

  # GET /curriculums/1/edit
  def edit
    @curriculum = Curriculum.find(params[:id])
  end

  # POST /curriculums
  # POST /curriculums.json
  def create
    @curriculum = Curriculum.new(params[:curriculum])

    respond_to do |format|
      if @curriculum.save
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully created.' }
        format.json { render json: @curriculum, status: :created, location: @curriculum }
      else
        format.html { render action: "new" }
        format.json { render json: @curriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /curriculums/1
  # PUT /curriculums/1.json
  def update
    @curriculum = Curriculum.find(params[:id])

    respond_to do |format|
      if @curriculum.update_attributes(params[:curriculum])
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @curriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculums/1
  # DELETE /curriculums/1.json
  def destroy
    @curriculum = Curriculum.find(params[:id])
    @curriculum.destroy

    respond_to do |format|
      format.html { redirect_to curriculums_url }
      format.json { head :no_content }
    end
  end
end
