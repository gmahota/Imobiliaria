class FotosrespostaController < ApplicationController
  # GET /fotosresposta
  # GET /fotosresposta.json
  load_and_authorize_resource 
  
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
    @fotosresposta = Fotosresposta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fotosresposta }
    end
  end

  # GET /fotosresposta/1/edit
  def edit
    @fotosresposta = Fotosresposta.find(params[:id])
  end

  # POST /fotosresposta
  # POST /fotosresposta.json
  def create
   @fotosresposta = Fotosresposta.new(params[:@fotosresposta])

    respond_to do |format|
      if @fotosresposta.save
        format.html { redirect_to @fotosresposta, notice: 'Respostas Criadas com Sucesso.' }
        format.json { render json: @fotosresposta, status: :created, location: @fotosrespostum }
      else
        format.html { render action: "new" }
        format.json { render json: @fotosresposta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fotosresposta/1
  # PUT /fotosresposta/1.json
  def update
    @fotosresposta = Fotosresposta.find(params[:id])

    respond_to do |format|
      if @fotosresposta.update_attributes(params[:@fotosresposta])
        format.html { redirect_to @fotosresposta, notice: 'Respostas actualizadas com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fotosresposta.errors, status: :unprocessable_entity }
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
