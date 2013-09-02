class DopsController < ApplicationController
  # GET /dops
  # GET /dops.json
  def index
    @dops = Dop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dops }
    end
  end

  # GET /dops/1
  # GET /dops/1.json
  def show
    @dop = Dop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dop }
    end
  end

  # GET /dops/new
  # GET /dops/new.json
  def new
    @dop = Dop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dop }
    end
  end

  # GET /dops/1/edit
  def edit
    @dop = current_user.dop.find(params[:id])
  end

  # POST /dops
  # POST /dops.json
  def create
    @dop = current_user.dops.build(params[:dop])

    respond_to do |format|
      if @dop.save
        format.html { redirect_to @dop, notice: 'Dop was successfully created.' }
        format.json { render json: @dop, status: :created, location: @dop }
      else
        format.html { render action: "new" }
        format.json { render json: @dop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dops/1
  # PUT /dops/1.json
  def update
    @dop = Dop.find(params[:id])

    respond_to do |format|
      if @dop.update_attributes(params[:dop])
        format.html { redirect_to @dop, notice: 'Dop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dops/1
  # DELETE /dops/1.json
  def destroy
    @dop = Dop.find(params[:id])
    @dop.destroy

    respond_to do |format|
      format.html { redirect_to dops_url }
      format.json { head :no_content }
    end
  end
end
