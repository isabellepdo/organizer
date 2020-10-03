class TarefaDoProjetosController < ApplicationController
  before_action :set_tarefa_do_projeto, only: [:show, :edit, :update, :destroy]

  # GET /tarefa_do_projetos
  # GET /tarefa_do_projetos.json
  def index
    @tarefa_do_projetos = TarefaDoProjeto.all
  end

  # GET /tarefa_do_projetos/1
  # GET /tarefa_do_projetos/1.json
  def show
  end

  # GET /tarefa_do_projetos/new
  def new
    @tarefa_do_projeto = TarefaDoProjeto.new
  end

  # GET /tarefa_do_projetos/1/edit
  def edit
  end

  # POST /tarefa_do_projetos
  # POST /tarefa_do_projetos.json
  def create
    @tarefa_do_projeto = TarefaDoProjeto.new(tarefa_do_projeto_params)

    respond_to do |format|
      if @tarefa_do_projeto.save
        format.html { redirect_to @tarefa_do_projeto, notice: 'Tarefa do projeto was successfully created.' }
        format.json { render :show, status: :created, location: @tarefa_do_projeto }
      else
        format.html { render :new }
        format.json { render json: @tarefa_do_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarefa_do_projetos/1
  # PATCH/PUT /tarefa_do_projetos/1.json
  def update
    respond_to do |format|
      if @tarefa_do_projeto.update(tarefa_do_projeto_params)
        format.html { redirect_to @tarefa_do_projeto, notice: 'Tarefa do projeto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarefa_do_projeto }
      else
        format.html { render :edit }
        format.json { render json: @tarefa_do_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarefa_do_projetos/1
  # DELETE /tarefa_do_projetos/1.json
  def destroy
    @tarefa_do_projeto.destroy
    respond_to do |format|
      format.html { redirect_to tarefa_do_projetos_url, notice: 'Tarefa do projeto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarefa_do_projeto
      @tarefa_do_projeto = TarefaDoProjeto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarefa_do_projeto_params
      params.require(:tarefa_do_projeto).permit(:user_id, :status, :descricao, :prazo, :link_nuvem, :tarefa_id, :projeto_id)
    end
end
