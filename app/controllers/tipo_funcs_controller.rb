class TipoFuncsController < ApplicationController
  # GET /tipo_funcs
  # GET /tipo_funcs.json
  def index
    @tipo_funcs = TipoFunc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_funcs }
    end
  end

  # GET /tipo_funcs/1
  # GET /tipo_funcs/1.json
  def show
    @tipo_func = TipoFunc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_func }
    end
  end

  # GET /tipo_funcs/new
  # GET /tipo_funcs/new.json
  def new
    @tipo_func = TipoFunc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_func }
    end
  end

  # GET /tipo_funcs/1/edit
  def edit
    @tipo_func = TipoFunc.find(params[:id])
  end

  # POST /tipo_funcs
  # POST /tipo_funcs.json
  def create
    @tipo_func = TipoFunc.new(params[:tipo_func])

    respond_to do |format|
      if @tipo_func.save
        format.html { redirect_to @tipo_func, notice: 'Tipo func was successfully created.' }
        format.json { render json: @tipo_func, status: :created, location: @tipo_func }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_func.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_funcs/1
  # PUT /tipo_funcs/1.json
  def update
    @tipo_func = TipoFunc.find(params[:id])

    respond_to do |format|
      if @tipo_func.update_attributes(params[:tipo_func])
        format.html { redirect_to @tipo_func, notice: 'Tipo func was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_func.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_funcs/1
  # DELETE /tipo_funcs/1.json
  def destroy
    @tipo_func = TipoFunc.find(params[:id])
    @tipo_func.destroy

    respond_to do |format|
      format.html { redirect_to tipo_funcs_url }
      format.json { head :no_content }
    end
  end
end
