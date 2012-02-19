class ToothsController < ApplicationController
  # GET /tooths
  # GET /tooths.json
  def index
    @tooths = Tooth.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tooths }
    end
  end

  # GET /tooths/1
  # GET /tooths/1.json
  def show
    @tooth = Tooth.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tooth }
    end
  end

  # GET /tooths/new
  # GET /tooths/new.json
  def new
    @tooth = Tooth.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tooth }
    end
  end

  # GET /tooths/1/edit
  def edit
    @tooth = Tooth.find(params[:id])
  end

  # POST /tooths
  # POST /tooths.json
  def create
    @tooth = Tooth.new(params[:tooth])

    respond_to do |format|
      if @tooth.save
        format.html { redirect_to @tooth, notice: 'Tooth was successfully created.' }
        format.json { render json: @tooth, status: :created, location: @tooth }
      else
        format.html { render action: "new" }
        format.json { render json: @tooth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tooths/1
  # PUT /tooths/1.json
  def update
    @tooth = Tooth.find(params[:id])

    respond_to do |format|
      if @tooth.update_attributes(params[:tooth])
        format.html { redirect_to @tooth, notice: 'Tooth was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tooth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tooths/1
  # DELETE /tooths/1.json
  def destroy
    @tooth = Tooth.find(params[:id])
    @tooth.destroy

    respond_to do |format|
      format.html { redirect_to tooths_url }
      format.json { head :no_content }
    end
  end
end
