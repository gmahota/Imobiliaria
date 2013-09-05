class TipoNegociosController < ApplicationController
  # GET /tipo_negocios
  # GET /tipo_negocios.json
  load_and_authorize_resource 
  def index
    @tipo_negocios = TipoNegocio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_negocios }
    end
  end

  # GET /tipo_negocios/1
  # GET /tipo_negocios/1.json
  def show
    @tipo_negocio = TipoNegocio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_negocio }
    end
  end

  # GET /tipo_negocios/new
  # GET /tipo_negocios/new.json
  def new
    @tipo_negocio = TipoNegocio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_negocio }
    end
  end

  # GET /tipo_negocios/1/edit
  def edit
    @tipo_negocio = TipoNegocio.find(params[:id])
  end

  # POST /tipo_negocios
  # POST /tipo_negocios.json
  def create
    @tipo_negocio = TipoNegocio.new(params[:tipo_negocio])

    respond_to do |format|
      if @tipo_negocio.save
        format.html { redirect_to @tipo_negocio, notice: 'Tipo negocio was successfully created.' }
        format.json { render json: @tipo_negocio, status: :created, location: @tipo_negocio }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_negocios/1
  # PUT /tipo_negocios/1.json
  def update
    @tipo_negocio = TipoNegocio.find(params[:id])

    respond_to do |format|
      if @tipo_negocio.update_attributes(params[:tipo_negocio])
        format.html { redirect_to @tipo_negocio, notice: 'Tipo negocio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_negocios/1
  # DELETE /tipo_negocios/1.json
  def destroy
    @tipo_negocio = TipoNegocio.find(params[:id])
    @tipo_negocio.destroy

    respond_to do |format|
      format.html { redirect_to tipo_negocios_url }
      format.json { head :no_content }
    end
  end
end
