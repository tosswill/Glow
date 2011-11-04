class IncubatorsController < ApplicationController
  # GET /incubators
  # GET /incubators.json
  def index
    @incubators = Incubator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incubators }
    end
  end

  # GET /incubators/1
  # GET /incubators/1.json
  def show
    @incubator = Incubator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incubator }
    end
  end

  # GET /incubators/new
  # GET /incubators/new.json
  def new
    @incubator = Incubator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incubator }
    end
  end

  # GET /incubators/1/edit
  def edit
    @incubator = Incubator.find(params[:id])
  end

  # POST /incubators
  # POST /incubators.json
  def create
    @incubator = Incubator.new(params[:incubator])

    respond_to do |format|
      if @incubator.save
        format.html { redirect_to @incubator, notice: 'Incubator was successfully created.' }
        format.json { render json: @incubator, status: :created, location: @incubator }
      else
        format.html { render action: "new" }
        format.json { render json: @incubator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incubators/1
  # PUT /incubators/1.json
  def update
    @incubator = Incubator.find(params[:id])

    respond_to do |format|
      if @incubator.update_attributes(params[:incubator])
        format.html { redirect_to @incubator, notice: 'Incubator was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @incubator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incubators/1
  # DELETE /incubators/1.json
  def destroy
    @incubator = Incubator.find(params[:id])
    @incubator.destroy

    respond_to do |format|
      format.html { redirect_to incubators_url }
      format.json { head :ok }
    end
  end
end
