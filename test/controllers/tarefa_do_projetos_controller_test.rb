require 'test_helper'

class TarefaDoProjetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarefa_do_projeto = tarefa_do_projetos(:one)
  end

  test "should get index" do
    get tarefa_do_projetos_url
    assert_response :success
  end

  test "should get new" do
    get new_tarefa_do_projeto_url
    assert_response :success
  end

  test "should create tarefa_do_projeto" do
    assert_difference('TarefaDoProjeto.count') do
      post tarefa_do_projetos_url, params: { tarefa_do_projeto: { descricao: @tarefa_do_projeto.descricao, link_nuvem: @tarefa_do_projeto.link_nuvem, prazo: @tarefa_do_projeto.prazo, projeto_id: @tarefa_do_projeto.projeto_id, status: @tarefa_do_projeto.status, tarefa_id: @tarefa_do_projeto.tarefa_id, user_id: @tarefa_do_projeto.user_id } }
    end

    assert_redirected_to tarefa_do_projeto_url(TarefaDoProjeto.last)
  end

  test "should show tarefa_do_projeto" do
    get tarefa_do_projeto_url(@tarefa_do_projeto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tarefa_do_projeto_url(@tarefa_do_projeto)
    assert_response :success
  end

  test "should update tarefa_do_projeto" do
    patch tarefa_do_projeto_url(@tarefa_do_projeto), params: { tarefa_do_projeto: { descricao: @tarefa_do_projeto.descricao, link_nuvem: @tarefa_do_projeto.link_nuvem, prazo: @tarefa_do_projeto.prazo, projeto_id: @tarefa_do_projeto.projeto_id, status: @tarefa_do_projeto.status, tarefa_id: @tarefa_do_projeto.tarefa_id, user_id: @tarefa_do_projeto.user_id } }
    assert_redirected_to tarefa_do_projeto_url(@tarefa_do_projeto)
  end

  test "should destroy tarefa_do_projeto" do
    assert_difference('TarefaDoProjeto.count', -1) do
      delete tarefa_do_projeto_url(@tarefa_do_projeto)
    end

    assert_redirected_to tarefa_do_projetos_url
  end
end
