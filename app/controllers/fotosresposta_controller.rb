class FotosrespostaController < ApplicationController
  # GET /fotosresposta
  # GET /fotosresposta.json
  #load_and_authorize_resource 
  
  def index
    @fotosresposta = Fotosresposta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fotosresposta }
    end
  end

  # GET /fotosresposta/1
  # GET /fotosresposta/1.json
  def show
    @fotosresposta = Fotosresposta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fotosresposta}
    end
  end

  # GET /fotosresposta/new
  # GET /fotosresposta/new.json
  def new
    @foto = Fotosresposta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foto }
    end
  end

  # GET /fotosresposta/1/edit
  def edit
    @foto = Fotosresposta.find(params[:id])
  end

  # POST /fotosresposta
  # POST /fotosresposta.json
  def create
  
   @foto = Fotosresposta.new(params[:fotosresposta])

    respond_to do |format|
      if @foto.save
        format.html { redirect_to @foto, notice: 'Respostas Criadas com Sucesso.' }
        format.json { render json: @foto, status: :created, location: @foto}
      else
        format.html { render action: "new" }
        format.json { render json: @foto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fotosresposta/1
  # PUT /fotosresposta/1.json
  def update
    @foto = Fotosresposta.find(params[:id])

    respond_to do |format|
      if @foto.update_attributes(params[:fotosresposta])
        format.html { redirect_to @foto, notice: 'Respostas actualizadas com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @foto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotosresposta/1
  # DELETE /fotosresposta/1.json
  def destroy
    @fotosresposta = Fotosresposta.find(params[:id])
    @fotosresposta.destroy

    respond_to do |format|
      format.html { redirect_to fotosresposta_url }
      format.json { head :no_content }
    end
  end
end
