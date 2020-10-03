require 'test_helper'

class AtividadeDaTarefaPorProjetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atividade_da_tarefa_por_projeto = atividade_da_tarefa_por_projetos(:one)
  end

  test "should get index" do
    get atividade_da_tarefa_por_projetos_url
    assert_response :success
  end

  test "should get new" do
    get new_atividade_da_tarefa_por_projeto_url
    assert_response :success
  end

  test "should create atividade_da_tarefa_por_projeto" do
    assert_difference('AtividadeDaTarefaPorProjeto.count') do
      post atividade_da_tarefa_por_projetos_url, params: { atividade_da_tarefa_por_projeto: { nome: @atividade_da_tarefa_por_projeto.nome, prazo: @atividade_da_tarefa_por_projeto.prazo, status: @atividade_da_tarefa_por_projeto.status, tarefa_do_projetos_id: @atividade_da_tarefa_por_projeto.tarefa_do_projetos_id } }
    end

    assert_redirected_to atividade_da_tarefa_por_projeto_url(AtividadeDaTarefaPorProjeto.last)
  end

  test "should show atividade_da_tarefa_por_projeto" do
    get atividade_da_tarefa_por_projeto_url(@atividade_da_tarefa_por_projeto)
    assert_response :success
  end

  test "should get edit" do
    get edit_atividade_da_tarefa_por_projeto_url(@atividade_da_tarefa_por_projeto)
    assert_response :success
  end

  test "should update atividade_da_tarefa_por_projeto" do
    patch atividade_da_tarefa_por_projeto_url(@atividade_da_tarefa_por_projeto), params: { atividade_da_tarefa_por_projeto: { nome: @atividade_da_tarefa_por_projeto.nome, prazo: @atividade_da_tarefa_por_projeto.prazo, status: @atividade_da_tarefa_por_projeto.status, tarefa_do_projetos_id: @atividade_da_tarefa_por_projeto.tarefa_do_projetos_id } }
    assert_redirected_to atividade_da_tarefa_por_projeto_url(@atividade_da_tarefa_por_projeto)
  end

  test "should destroy atividade_da_tarefa_por_projeto" do
    assert_difference('AtividadeDaTarefaPorProjeto.count', -1) do
      delete atividade_da_tarefa_por_projeto_url(@atividade_da_tarefa_por_projeto)
    end

    assert_redirected_to atividade_da_tarefa_por_projetos_url
  end
end
