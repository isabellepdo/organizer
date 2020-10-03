require 'test_helper'

class ObservacaoDoProjetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @observacao_do_projeto = observacao_do_projetos(:one)
  end

  test "should get index" do
    get observacao_do_projetos_url
    assert_response :success
  end

  test "should get new" do
    get new_observacao_do_projeto_url
    assert_response :success
  end

  test "should create observacao_do_projeto" do
    assert_difference('ObservacaoDoProjeto.count') do
      post observacao_do_projetos_url, params: { observacao_do_projeto: { mensagem: @observacao_do_projeto.mensagem, projeto_id: @observacao_do_projeto.projeto_id, user_id: @observacao_do_projeto.user_id } }
    end

    assert_redirected_to observacao_do_projeto_url(ObservacaoDoProjeto.last)
  end

  test "should show observacao_do_projeto" do
    get observacao_do_projeto_url(@observacao_do_projeto)
    assert_response :success
  end

  test "should get edit" do
    get edit_observacao_do_projeto_url(@observacao_do_projeto)
    assert_response :success
  end

  test "should update observacao_do_projeto" do
    patch observacao_do_projeto_url(@observacao_do_projeto), params: { observacao_do_projeto: { mensagem: @observacao_do_projeto.mensagem, projeto_id: @observacao_do_projeto.projeto_id, user_id: @observacao_do_projeto.user_id } }
    assert_redirected_to observacao_do_projeto_url(@observacao_do_projeto)
  end

  test "should destroy observacao_do_projeto" do
    assert_difference('ObservacaoDoProjeto.count', -1) do
      delete observacao_do_projeto_url(@observacao_do_projeto)
    end

    assert_redirected_to observacao_do_projetos_url
  end
end
