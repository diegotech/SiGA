class TipoVeicsController < ApplicationController
  # GET /tipo_veics
  # GET /tipo_veics.json
  def index
    @tipo_veics = TipoVeic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_veics }
    end
  end

  # GET /tipo_veics/1
  # GET /tipo_veics/1.json
  def show
    @tipo_veic = TipoVeic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_veic }
    end
  end

  # GET /tipo_veics/new
  # GET /tipo_veics/new.json
  def new
    @tipo_veic = TipoVeic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_veic }
    end
  end

  # GET /tipo_veics/1/edit
  def edit
    @tipo_veic = TipoVeic.find(params[:id])
  end

  # POST /tipo_veics
  # POST /tipo_veics.json
  def create
    @tipo_veic = TipoVeic.new(params[:tipo_veic])

    respond_to do |format|
      if @tipo_veic.save
        format.html { redirect_to @tipo_veic, notice: 'Tipo veic was successfully created.' }
        format.json { render json: @tipo_veic, status: :created, location: @tipo_veic }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_veic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_veics/1
  # PUT /tipo_veics/1.json
  def update
    @tipo_veic = TipoVeic.find(params[:id])

    respond_to do |format|
      if @tipo_veic.update_attributes(params[:tipo_veic])
        format.html { redirect_to @tipo_veic, notice: 'Tipo veic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_veic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_veics/1
  # DELETE /tipo_veics/1.json
  def destroy
    @tipo_veic = TipoVeic.find(params[:id])
    @tipo_veic.destroy

    respond_to do |format|
      format.html { redirect_to tipo_veics_url }
      format.json { head :no_content }
    end
  end
end
