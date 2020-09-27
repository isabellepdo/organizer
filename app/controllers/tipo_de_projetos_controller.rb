class TipoDeProjetosController < ApplicationController
  before_action :set_tipo_de_projeto, only: [:show, :edit, :update, :destroy]

  # GET /tipo_de_projetos
  # GET /tipo_de_projetos.json
  def index
    @tipo_de_projetos = TipoDeProjeto.all
  end

  # GET /tipo_de_projetos/1
  # GET /tipo_de_projetos/1.json
  def show
  end

  # GET /tipo_de_projetos/new
  def new
    @tipo_de_projeto = TipoDeProjeto.new
  end

  # GET /tipo_de_projetos/1/edit
  def edit
  end

  # POST /tipo_de_projetos
  # POST /tipo_de_projetos.json
  def create
    @tipo_de_projeto = TipoDeProjeto.new(tipo_de_projeto_params)

    respond_to do |format|
      if @tipo_de_projeto.save
        format.html { redirect_to @tipo_de_projeto, notice: 'Tipo de projeto was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_de_projeto }
      else
        format.html { render :new }
        format.json { render json: @tipo_de_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_de_projetos/1
  # PATCH/PUT /tipo_de_projetos/1.json
  def update
    respond_to do |format|
      if @tipo_de_projeto.update(tipo_de_projeto_params)
        format.html { redirect_to @tipo_de_projeto, notice: 'Tipo de projeto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_de_projeto }
      else
        format.html { render :edit }
        format.json { render json: @tipo_de_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_projetos/1
  # DELETE /tipo_de_projetos/1.json
  def destroy
    @tipo_de_projeto.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_projetos_url, notice: 'Tipo de projeto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_projeto
      @tipo_de_projeto = TipoDeProjeto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_de_projeto_params
      params.require(:tipo_de_projeto).permit(:tipo)
    end
end
