class CurriculumAssessmentsController < ApplicationController
  # GET /curriculum_assessments
  # GET /curriculum_assessments.json
  def index
    @curriculum_assessments = CurriculumAssessment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @curriculum_assessments }
    end
  end

  # GET /curriculum_assessments/1
  # GET /curriculum_assessments/1.json
  def show
    @curriculum_assessment = CurriculumAssessment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @curriculum_assessment }
    end
  end

  # GET /curriculum_assessments/new
  # GET /curriculum_assessments/new.json
  def new
    @curriculum_assessment = CurriculumAssessment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @curriculum_assessment }
    end
  end

  # GET /curriculum_assessments/1/edit
  def edit
    @curriculum_assessment = CurriculumAssessment.find(params[:id])
  end

  # POST /curriculum_assessments
  # POST /curriculum_assessments.json
  def create
    #@curriculum_assessment = CurriculumAssessment.create(params[:curriculum_assessments])
    
    @dop = Dop.find(params[:curriculum_assessment][:dop_id])
    @item = Item.find(params[:curriculum_assessment][:item_id])
    @curriculum_assessment = CurriculumAssessment.create(item: @item, dop: @dop)


    respond_to do |format|
      if @curriculum_assessment.save
        format.html { redirect_to @curriculum_assessment, notice: 'Curriculum assessment was successfully created.' }
        format.json { render json: @curriculum_assessment, status: :created, location: @curriculum_assessment }
      else
        format.html { render action: "new" }
        format.json { render json: @curriculum_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /curriculum_assessments/1
  # PUT /curriculum_assessments/1.json
  def update
    @curriculum_assessment = CurriculumAssessment.find(params[:id])

    respond_to do |format|
      if @curriculum_assessment.update_attributes(params[:curriculum_assessment])
        format.html { redirect_to @curriculum_assessment, notice: 'Curriculum assessment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @curriculum_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculum_assessments/1
  # DELETE /curriculum_assessments/1.json
  def destroy
    @curriculum_assessment = CurriculumAssessment.find(params[:id])
    @curriculum_assessment.destroy

    respond_to do |format|
      format.html { redirect_to curriculum_assessments_url }
      format.json { head :no_content }
    end
  end
end
