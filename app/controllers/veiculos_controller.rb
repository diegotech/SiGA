class VeiculosController < ApplicationController
  # GET /veiculos
  # GET /veiculos.json
  def index
    @veiculos = Veiculo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @veiculos }
    end
  end

  def search
    @veiculos = Veiculo.search params[:search]
  end
  # GET /veiculos/1
  # GET /veiculos/1.json
  def show
    @veiculo = Veiculo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @veiculo }
    end
  end

  # GET /veiculos/new
  # GET /veiculos/new.json
  def new
    @veiculo = Veiculo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @veiculo }
    end
  end

  # GET /veiculos/1/edit
  def edit
    @veiculo = Veiculo.find(params[:id])
  end

  # POST /veiculos
  # POST /veiculos.json
  def create
    @veiculo = Veiculo.new(params[:veiculo])

    respond_to do |format|
      if @veiculo.save
        m = Motorista.new
        m.veiculo_id = @veiculo.id
        r = Residencia.find_by_uh_id params[:resid]
        m.residencia_id = r.id 
        m.save
        
        format.html { redirect_to @veiculo, notice: 'Veiculo was successfully created.' }
        format.json { render json: @veiculo, status: :created, location: @veiculo }
      else
        format.html { render action: "new" }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /veiculos/1
  # PUT /veiculos/1.json
  def update
    @veiculo = Veiculo.find(params[:id])

    respond_to do |format|
      if @veiculo.update_attributes(params[:veiculo])
        
        m = Motorista.find_by_veiculo_id params[:id]
        Residencia.find_by_uh_id params[:resid]
        m.residencia_id = r.id 
        m.save
        
        format.html { redirect_to @veiculo, notice: 'Veiculo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veiculos/1
  # DELETE /veiculos/1.json
  def destroy
    @veiculo = Veiculo.find(params[:id])
    @veiculo.destroy

    respond_to do |format|
      format.html { redirect_to veiculos_url }
      format.json { head :no_content }
    end
  end
end
