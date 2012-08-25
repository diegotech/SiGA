class TipoPessoasController < ApplicationController
  # GET /tipo_pessoas
  # GET /tipo_pessoas.json
  def index
    @tipo_pessoas = TipoPessoa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_pessoas }
    end
  end

  # GET /tipo_pessoas/1
  # GET /tipo_pessoas/1.json
  def show
    @tipo_pessoa = TipoPessoa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_pessoa }
    end
  end

  # GET /tipo_pessoas/new
  # GET /tipo_pessoas/new.json
  def new
    @tipo_pessoa = TipoPessoa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_pessoa }
    end
  end

  # GET /tipo_pessoas/1/edit
  def edit
    @tipo_pessoa = TipoPessoa.find(params[:id])
  end

  # POST /tipo_pessoas
  # POST /tipo_pessoas.json
  def create
    @tipo_pessoa = TipoPessoa.new(params[:tipo_pessoa])

    respond_to do |format|
      if @tipo_pessoa.save
        format.html { redirect_to @tipo_pessoa, notice: 'Tipo pessoa was successfully created.' }
        format.json { render json: @tipo_pessoa, status: :created, location: @tipo_pessoa }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_pessoas/1
  # PUT /tipo_pessoas/1.json
  def update
    @tipo_pessoa = TipoPessoa.find(params[:id])

    respond_to do |format|
      if @tipo_pessoa.update_attributes(params[:tipo_pessoa])
        format.html { redirect_to @tipo_pessoa, notice: 'Tipo pessoa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_pessoas/1
  # DELETE /tipo_pessoas/1.json
  def destroy
    @tipo_pessoa = TipoPessoa.find(params[:id])
    @tipo_pessoa.destroy

    respond_to do |format|
      format.html { redirect_to tipo_pessoas_url }
      format.json { head :no_content }
    end
  end
end
