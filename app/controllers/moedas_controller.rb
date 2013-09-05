class MoedasController < ApplicationController
  # GET /moedas
  # GET /moedas.json
  load_and_authorize_resource 
  
  def index
    @moedas = Moeda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @moedas }
    end
  end

  # GET /moedas/1
  # GET /moedas/1.json
  def show
    @moeda = Moeda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @moeda }
    end
  end

  # GET /moedas/new
  # GET /moedas/new.json
  def new
    @moeda = Moeda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @moeda }
    end
  end

  # GET /moedas/1/edit
  def edit
    @moeda = Moeda.find(params[:id])
  end

  # POST /moedas
  # POST /moedas.json
  def create
    @moeda = Moeda.new(params[:moeda])

    respond_to do |format|
      if @moeda.save
        format.html { redirect_to @moeda, notice: 'Moeda was successfully created.' }
        format.json { render json: @moeda, status: :created, location: @moeda }
      else
        format.html { render action: "new" }
        format.json { render json: @moeda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /moedas/1
  # PUT /moedas/1.json
  def update
    @moeda = Moeda.find(params[:id])

    respond_to do |format|
      if @moeda.update_attributes(params[:moeda])
        format.html { redirect_to @moeda, notice: 'Moeda was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @moeda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moedas/1
  # DELETE /moedas/1.json
  def destroy
    @moeda = Moeda.find(params[:id])
    @moeda.destroy

    respond_to do |format|
      format.html { redirect_to moedas_url }
      format.json { head :no_content }
    end
  end
end
