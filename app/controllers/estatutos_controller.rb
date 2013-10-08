class EstatutosController < ApplicationController
  # GET /estatutos
  # GET /estatutos.json
  def index
    @estatutos = Estatuto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estatutos }
    end
  end

  # GET /estatutos/1
  # GET /estatutos/1.json
  def show
    @estatuto = Estatuto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estatuto }
    end
  end

  # GET /estatutos/new
  # GET /estatutos/new.json
  def new
    @estatuto = Estatuto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estatuto }
    end
  end

  # GET /estatutos/1/edit
  def edit
    @estatuto = Estatuto.find(params[:id])
  end

  # POST /estatutos
  # POST /estatutos.json
  def create
    @estatuto = Estatuto.new(params[:estatuto])

    respond_to do |format|
      if @estatuto.save
        format.html { redirect_to @estatuto, notice: 'Estatuto was successfully created.' }
        format.json { render json: @estatuto, status: :created, location: @estatuto }
      else
        format.html { render action: "new" }
        format.json { render json: @estatuto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estatutos/1
  # PUT /estatutos/1.json
  def update
    @estatuto = Estatuto.find(params[:id])

    respond_to do |format|
      if @estatuto.update_attributes(params[:estatuto])
        format.html { redirect_to @estatuto, notice: 'Estatuto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estatuto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estatutos/1
  # DELETE /estatutos/1.json
  def destroy
    @estatuto = Estatuto.find(params[:id])
    @estatuto.destroy

    respond_to do |format|
      format.html { redirect_to estatutos_url }
      format.json { head :no_content }
    end
  end
end
