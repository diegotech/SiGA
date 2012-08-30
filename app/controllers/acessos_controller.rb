class AcessosController < ApplicationController
  # GET /acessos
  # GET /acessos.json
  def index
    @acessos = Acesso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @acessos }
    end
  end

  # GET /acessos/1
  # GET /acessos/1.json
  def show
    @acesso = Acesso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @acesso }
    end
  end

  # GET /acessos/1/edit
  def edit
    @acesso = Acesso.find(params[:id])
  end

  # POST /acessos
  # POST /acessos.json
  def create_pedestre
    
    @acesso = Acesso.new
    @acesso.residencia_id = params[:id]
    @acesso.funcionario_id = 1
    
    respond_to do |format|
      if @acesso.save
        format.html { redirect_to acessos_url }
        format.json { render json: @acesso, status: :created, location: @acesso }
      else
        format.html { render action: "new" }
        format.json { render json: @acesso.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def create_veiculo
    
    @acesso = Acesso.new
    @acesso.motorista_id = params[:id]
    @acesso.funcionario_id = 1
    
    respond_to do |format|
      if @acesso.save
        format.html { redirect_to acessos_url }
        format.json { render json: @acesso, status: :created, location: @acesso }
      else
        format.html { render action: "new" }
        format.json { render json: @acesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /acessos/1
  # PUT /acessos/1.json
  def update
    @acesso = Acesso.find(params[:id])

    respond_to do |format|
      if @acesso.update_attributes(params[:acesso])
        format.html { redirect_to @acesso, notice: 'Acesso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @acesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acessos/1
  # DELETE /acessos/1.json
  def destroy
    @acesso = Acesso.find(params[:id])
    @acesso.destroy

    respond_to do |format|
      format.html { redirect_to acessos_url }
      format.json { head :no_content }
    end
  end
end
