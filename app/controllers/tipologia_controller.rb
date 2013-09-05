class TipologiaController < ApplicationController
  # GET /tipologia
  # GET /tipologia.json
  load_and_authorize_resource 
  def index
    @tipologia = Tipologium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipologia }
    end
  end

  # GET /tipologia/1
  # GET /tipologia/1.json
  def show
    @tipologium = Tipologium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipologium }
    end
  end

  # GET /tipologia/new
  # GET /tipologia/new.json
  def new
    @tipologium = Tipologium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipologium }
    end
  end

  # GET /tipologia/1/edit
  def edit
    @tipologium = Tipologium.find(params[:id])
  end

  # POST /tipologia
  # POST /tipologia.json
  def create
    @tipologium = Tipologium.new(params[:tipologium])

    respond_to do |format|
      if @tipologium.save
        format.html { redirect_to @tipologium, notice: 'Tipologium was successfully created.' }
        format.json { render json: @tipologium, status: :created, location: @tipologium }
      else
        format.html { render action: "new" }
        format.json { render json: @tipologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipologia/1
  # PUT /tipologia/1.json
  def update
    @tipologium = Tipologium.find(params[:id])

    respond_to do |format|
      if @tipologium.update_attributes(params[:tipologium])
        format.html { redirect_to @tipologium, notice: 'Tipologium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipologia/1
  # DELETE /tipologia/1.json
  def destroy
    @tipologium = Tipologium.find(params[:id])
    @tipologium.destroy

    respond_to do |format|
      format.html { redirect_to tipologia_url }
      format.json { head :no_content }
    end
  end
end
