class FootsController < ApplicationController
  # GET /foots
  # GET /foots.json
  def index
    @foots = Foot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foots }
    end
  end

  # GET /foots/1
  # GET /foots/1.json
  def show
    @foot = Foot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foot }
    end
  end

  # GET /foots/new
  # GET /foots/new.json
  def new
    @foot = Foot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foot }
    end
  end

  # GET /foots/1/edit
  def edit
    @foot = Foot.find(params[:id])
  end

  # POST /foots
  # POST /foots.json
  def create
    @foot = Foot.new(params[:foot])

    respond_to do |format|
      if @foot.save
        format.html { redirect_to @foot, notice: 'Foot was successfully created.' }
        format.json { render json: @foot, status: :created, location: @foot }
      else
        format.html { render action: "new" }
        format.json { render json: @foot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foots/1
  # PUT /foots/1.json
  def update
    @foot = Foot.find(params[:id])

    respond_to do |format|
      if @foot.update_attributes(params[:foot])
        format.html { redirect_to @foot, notice: 'Foot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @foot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foots/1
  # DELETE /foots/1.json
  def destroy
    @foot = Foot.find(params[:id])
    @foot.destroy

    respond_to do |format|
      format.html { redirect_to foots_url }
      format.json { head :no_content }
    end
  end
end
