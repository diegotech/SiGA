class CoresController < ApplicationController
  # GET /cores
  # GET /cores.json
  def index
    @cores = Cor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cores }
    end
  end

  # GET /cores/1
  # GET /cores/1.json
  def show
    @cor = Cor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cor }
    end
  end

  # GET /cores/new
  # GET /cores/new.json
  def new
    @cor = Cor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cor }
    end
  end

  # GET /cores/1/edit
  def edit
    @cor = Cor.find(params[:id])
  end

  # POST /cores
  # POST /cores.json
  def create
    @cor = Cor.new(params[:cor])

    respond_to do |format|
      if @cor.save
        format.html { redirect_to @cor, notice: 'Cor was successfully created.' }
        format.json { render json: @cor, status: :created, location: @cor }
      else
        format.html { render action: "new" }
        format.json { render json: @cor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cores/1
  # PUT /cores/1.json
  def update
    @cor = Cor.find(params[:id])

    respond_to do |format|
      if @cor.update_attributes(params[:cor])
        format.html { redirect_to @cor, notice: 'Cor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cores/1
  # DELETE /cores/1.json
  def destroy
    @cor = Cor.find(params[:id])
    @cor.destroy

    respond_to do |format|
      format.html { redirect_to cores_url }
      format.json { head :no_content }
    end
  end
end
