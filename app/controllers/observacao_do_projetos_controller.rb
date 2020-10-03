class ObservacaoDoProjetosController < ApplicationController
  before_action :set_observacao_do_projeto, only: [:show, :edit, :update, :destroy]

  # GET /observacao_do_projetos
  # GET /observacao_do_projetos.json
  def index
    @observacao_do_projetos = ObservacaoDoProjeto.all
  end

  # GET /observacao_do_projetos/1
  # GET /observacao_do_projetos/1.json
  def show
  end

  # GET /observacao_do_projetos/new
  def new
    @observacao_do_projeto = ObservacaoDoProjeto.new
  end

  # GET /observacao_do_projetos/1/edit
  def edit
  end

  # POST /observacao_do_projetos
  # POST /observacao_do_projetos.json
  def create
    @observacao_do_projeto = ObservacaoDoProjeto.new(observacao_do_projeto_params)

    respond_to do |format|
      if @observacao_do_projeto.save
        format.html { redirect_to @observacao_do_projeto, notice: 'Observacao do projeto was successfully created.' }
        format.json { render :show, status: :created, location: @observacao_do_projeto }
      else
        format.html { render :new }
        format.json { render json: @observacao_do_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observacao_do_projetos/1
  # PATCH/PUT /observacao_do_projetos/1.json
  def update
    respond_to do |format|
      if @observacao_do_projeto.update(observacao_do_projeto_params)
        format.html { redirect_to @observacao_do_projeto, notice: 'Observacao do projeto was successfully updated.' }
        format.json { render :show, status: :ok, location: @observacao_do_projeto }
      else
        format.html { render :edit }
        format.json { render json: @observacao_do_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observacao_do_projetos/1
  # DELETE /observacao_do_projetos/1.json
  def destroy
    @observacao_do_projeto.destroy
    respond_to do |format|
      format.html { redirect_to observacao_do_projetos_url, notice: 'Observacao do projeto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observacao_do_projeto
      @observacao_do_projeto = ObservacaoDoProjeto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def observacao_do_projeto_params
      params.require(:observacao_do_projeto).permit(:projeto_id, :user_id, :mensagem)
    end
end
