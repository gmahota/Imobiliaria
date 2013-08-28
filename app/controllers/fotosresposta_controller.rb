class FotosrespostaController < ApplicationController
  # GET /fotosresposta
  # GET /fotosresposta.json
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
    @fotosrespostum = Fotosresposta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fotosrespostum }
    end
  end

  # GET /fotosresposta/new
  # GET /fotosresposta/new.json
  def new
    @fotosrespostum = Fotosresposta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fotosrespostum }
    end
  end

  # GET /fotosresposta/1/edit
  def edit
    @fotosrespostum = Fotosresposta.find(params[:id])
  end

  # POST /fotosresposta
  # POST /fotosresposta.json
  def create
    @fotosrespostum = Fotosresposta.new(params[:fotosrespostum])

    respond_to do |format|
      if @fotosrespostum.save
        format.html { redirect_to @fotosrespostum, notice: 'Respostas Criadas com Sucesso.' }
        format.json { render json: @fotosrespostum, status: :created, location: @fotosrespostum }
      else
        format.html { render action: "new" }
        format.json { render json: @fotosrespostum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fotosresposta/1
  # PUT /fotosresposta/1.json
  def update
    @fotosrespostum = Fotosresposta.find(params[:id])

    respond_to do |format|
      if @fotosrespostum.update_attributes(params[:fotosrespostum])
        format.html { redirect_to @fotosrespostum, notice: 'Respostas actualizadas com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fotosrespostum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotosresposta/1
  # DELETE /fotosresposta/1.json
  def destroy
    @fotosrespostum = Fotosresposta.find(params[:id])
    @fotosrespostum.destroy

    respond_to do |format|
      format.html { redirect_to fotosresposta_url }
      format.json { head :no_content }
    end
  end
end
