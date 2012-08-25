class TipoUhsController < ApplicationController
  # GET /tipo_uhs
  # GET /tipo_uhs.json
  def index
    @tipo_uhs = TipoUh.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_uhs }
    end
  end

  # GET /tipo_uhs/1
  # GET /tipo_uhs/1.json
  def show
    @tipo_uh = TipoUh.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_uh }
    end
  end

  # GET /tipo_uhs/new
  # GET /tipo_uhs/new.json
  def new
    @tipo_uh = TipoUh.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_uh }
    end
  end

  # GET /tipo_uhs/1/edit
  def edit
    @tipo_uh = TipoUh.find(params[:id])
  end

  # POST /tipo_uhs
  # POST /tipo_uhs.json
  def create
    @tipo_uh = TipoUh.new(params[:tipo_uh])

    respond_to do |format|
      if @tipo_uh.save
        format.html { redirect_to @tipo_uh, notice: 'Tipo uh was successfully created.' }
        format.json { render json: @tipo_uh, status: :created, location: @tipo_uh }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_uh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_uhs/1
  # PUT /tipo_uhs/1.json
  def update
    @tipo_uh = TipoUh.find(params[:id])

    respond_to do |format|
      if @tipo_uh.update_attributes(params[:tipo_uh])
        format.html { redirect_to @tipo_uh, notice: 'Tipo uh was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_uh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_uhs/1
  # DELETE /tipo_uhs/1.json
  def destroy
    @tipo_uh = TipoUh.find(params[:id])
    @tipo_uh.destroy

    respond_to do |format|
      format.html { redirect_to tipo_uhs_url }
      format.json { head :no_content }
    end
  end
end
