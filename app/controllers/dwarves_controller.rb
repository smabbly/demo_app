class DwarvesController < ApplicationController
  # GET /dwarves
  # GET /dwarves.json
  def index
    @dwarves = Dwarf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dwarves }
    end
  end

  # GET /dwarves/1
  # GET /dwarves/1.json
  def show
    @dwarf = Dwarf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dwarf }
    end
  end

  # GET /dwarves/new
  # GET /dwarves/new.json
  def new
    @dwarf = Dwarf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dwarf }
    end
  end

  # GET /dwarves/1/edit
  def edit
    @dwarf = Dwarf.find(params[:id])
  end

  # POST /dwarves
  # POST /dwarves.json
  def create
    @dwarf = Dwarf.new(params[:dwarf])

    respond_to do |format|
      if @dwarf.save
        format.html { redirect_to @dwarf, notice: 'Dwarf was successfully created.' }
        format.json { render json: @dwarf, status: :created, location: @dwarf }
      else
        format.html { render action: "new" }
        format.json { render json: @dwarf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dwarves/1
  # PUT /dwarves/1.json
  def update
    @dwarf = Dwarf.find(params[:id])

    respond_to do |format|
      if @dwarf.update_attributes(params[:dwarf])
        format.html { redirect_to @dwarf, notice: 'Dwarf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dwarf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dwarves/1
  # DELETE /dwarves/1.json
  def destroy
    @dwarf = Dwarf.find(params[:id])
    @dwarf.destroy

    respond_to do |format|
      format.html { redirect_to dwarves_url }
      format.json { head :no_content }
    end
  end
end
