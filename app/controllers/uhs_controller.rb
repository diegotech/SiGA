class UhsController < ApplicationController
  # GET /uhs
  # GET /uhs.json
  def index
    @uhs = Uh.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uhs }
    end
  end

  # GET /uhs/1
  # GET /uhs/1.json
  def show
    @uh = Uh.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uh }
    end
  end

  # GET /uhs/new
  # GET /uhs/new.json
  def new
    @uh = Uh.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uh }
    end
  end

  # GET /uhs/1/edit
  def edit
    @uh = Uh.find(params[:id])
  end

  # POST /uhs
  # POST /uhs.json
  def create
    @uh = Uh.new(params[:uh])

    respond_to do |format|
      if @uh.save
        format.html { redirect_to @uh, notice: 'Uh was successfully created.' }
        format.json { render json: @uh, status: :created, location: @uh }
      else
        format.html { render action: "new" }
        format.json { render json: @uh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /uhs/1
  # PUT /uhs/1.json
  def update
    @uh = Uh.find(params[:id])

    respond_to do |format|
      if @uh.update_attributes(params[:uh])
        format.html { redirect_to @uh, notice: 'Uh was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uhs/1
  # DELETE /uhs/1.json
  def destroy
    @uh = Uh.find(params[:id])
    @uh.destroy

    respond_to do |format|
      format.html { redirect_to uhs_url }
      format.json { head :no_content }
    end
  end
end
