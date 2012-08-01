class ManifestationsController < ApplicationController
  # GET /manifestations
  # GET /manifestations.json
  def index
    @manifestations = Manifestation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manifestations }
    end
  end

  # GET /manifestations/1
  # GET /manifestations/1.json
  def show
    @manifestation = Manifestation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manifestation }
    end
  end

  # GET /manifestations/new
  # GET /manifestations/new.json
  def new
    @manifestation = Manifestation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manifestation }
    end
  end

  # GET /manifestations/1/edit
  def edit
    @manifestation = Manifestation.find(params[:id])
  end

  # POST /manifestations
  # POST /manifestations.json
  def create
    @manifestation = Manifestation.new(params[:manifestation])

    respond_to do |format|
      if @manifestation.save
        format.html { redirect_to @manifestation, notice: 'Manifestation was successfully created.' }
        format.json { render json: @manifestation, status: :created, location: @manifestation }
      else
        format.html { render action: "new" }
        format.json { render json: @manifestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /manifestations/1
  # PUT /manifestations/1.json
  def update
    @manifestation = Manifestation.find(params[:id])

    respond_to do |format|
      if @manifestation.update_attributes(params[:manifestation])
        format.html { redirect_to @manifestation, notice: 'Manifestation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @manifestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manifestations/1
  # DELETE /manifestations/1.json
  def destroy
    @manifestation = Manifestation.find(params[:id])
    @manifestation.destroy

    respond_to do |format|
      format.html { redirect_to manifestations_url }
      format.json { head :no_content }
    end
  end
end
