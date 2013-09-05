class TipoImovelsController < ApplicationController
  # GET /tipo_imovels
  # GET /tipo_imovels.json
  load_and_authorize_resource 
  
  def index
    @tipo_imovels = TipoImovel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_imovels }
    end
  end

  # GET /tipo_imovels/1
  # GET /tipo_imovels/1.json
  def show
    @tipo_imovel = TipoImovel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_imovel }
    end
  end

  # GET /tipo_imovels/new
  # GET /tipo_imovels/new.json
  def new
    @tipo_imovel = TipoImovel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_imovel }
    end
  end

  # GET /tipo_imovels/1/edit
  def edit
    @tipo_imovel = TipoImovel.find(params[:id])
  end

  # POST /tipo_imovels
  # POST /tipo_imovels.json
  def create
    @tipo_imovel = TipoImovel.new(params[:tipo_imovel])

    respond_to do |format|
      if @tipo_imovel.save
        format.html { redirect_to @tipo_imovel, notice: 'Tipo imovel was successfully created.' }
        format.json { render json: @tipo_imovel, status: :created, location: @tipo_imovel }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_imovels/1
  # PUT /tipo_imovels/1.json
  def update
    @tipo_imovel = TipoImovel.find(params[:id])

    respond_to do |format|
      if @tipo_imovel.update_attributes(params[:tipo_imovel])
        format.html { redirect_to @tipo_imovel, notice: 'Tipo imovel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_imovels/1
  # DELETE /tipo_imovels/1.json
  def destroy
    @tipo_imovel = TipoImovel.find(params[:id])
    @tipo_imovel.destroy

    respond_to do |format|
      format.html { redirect_to tipo_imovels_url }
      format.json { head :no_content }
    end
  end
end
