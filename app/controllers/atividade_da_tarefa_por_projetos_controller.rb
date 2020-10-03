class AtividadeDaTarefaPorProjetosController < ApplicationController
  before_action :set_atividade_da_tarefa_por_projeto, only: [:show, :edit, :update, :destroy]

  # GET /atividade_da_tarefa_por_projetos
  # GET /atividade_da_tarefa_por_projetos.json
  def index
    @atividade_da_tarefa_por_projetos = AtividadeDaTarefaPorProjeto.all
  end

  # GET /atividade_da_tarefa_por_projetos/1
  # GET /atividade_da_tarefa_por_projetos/1.json
  def show
  end

  # GET /atividade_da_tarefa_por_projetos/new
  def new
    @atividade_da_tarefa_por_projeto = AtividadeDaTarefaPorProjeto.new
  end

  # GET /atividade_da_tarefa_por_projetos/1/edit
  def edit
  end

  # POST /atividade_da_tarefa_por_projetos
  # POST /atividade_da_tarefa_por_projetos.json
  def create
    @atividade_da_tarefa_por_projeto = AtividadeDaTarefaPorProjeto.new(atividade_da_tarefa_por_projeto_params)

    respond_to do |format|
      if @atividade_da_tarefa_por_projeto.save
        format.html { redirect_to @atividade_da_tarefa_por_projeto, notice: 'Atividade da tarefa por projeto was successfully created.' }
        format.json { render :show, status: :created, location: @atividade_da_tarefa_por_projeto }
      else
        format.html { render :new }
        format.json { render json: @atividade_da_tarefa_por_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atividade_da_tarefa_por_projetos/1
  # PATCH/PUT /atividade_da_tarefa_por_projetos/1.json
  def update
    respond_to do |format|
      if @atividade_da_tarefa_por_projeto.update(atividade_da_tarefa_por_projeto_params)
        format.html { redirect_to @atividade_da_tarefa_por_projeto, notice: 'Atividade da tarefa por projeto was successfully updated.' }
        format.json { render :show, status: :ok, location: @atividade_da_tarefa_por_projeto }
      else
        format.html { render :edit }
        format.json { render json: @atividade_da_tarefa_por_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atividade_da_tarefa_por_projetos/1
  # DELETE /atividade_da_tarefa_por_projetos/1.json
  def destroy
    @atividade_da_tarefa_por_projeto.destroy
    respond_to do |format|
      format.html { redirect_to atividade_da_tarefa_por_projetos_url, notice: 'Atividade da tarefa por projeto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atividade_da_tarefa_por_projeto
      @atividade_da_tarefa_por_projeto = AtividadeDaTarefaPorProjeto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atividade_da_tarefa_por_projeto_params
      params.require(:atividade_da_tarefa_por_projeto).permit(:tarefa_do_projetos_id, :nome, :status, :prazo)
    end
end
