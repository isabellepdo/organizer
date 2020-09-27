require 'test_helper'

class TipoDeProjetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_projeto = tipo_de_projetos(:one)
  end

  test "should get index" do
    get tipo_de_projetos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_de_projeto_url
    assert_response :success
  end

  test "should create tipo_de_projeto" do
    assert_difference('TipoDeProjeto.count') do
      post tipo_de_projetos_url, params: { tipo_de_projeto: { tipo: @tipo_de_projeto.tipo } }
    end

    assert_redirected_to tipo_de_projeto_url(TipoDeProjeto.last)
  end

  test "should show tipo_de_projeto" do
    get tipo_de_projeto_url(@tipo_de_projeto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_de_projeto_url(@tipo_de_projeto)
    assert_response :success
  end

  test "should update tipo_de_projeto" do
    patch tipo_de_projeto_url(@tipo_de_projeto), params: { tipo_de_projeto: { tipo: @tipo_de_projeto.tipo } }
    assert_redirected_to tipo_de_projeto_url(@tipo_de_projeto)
  end

  test "should destroy tipo_de_projeto" do
    assert_difference('TipoDeProjeto.count', -1) do
      delete tipo_de_projeto_url(@tipo_de_projeto)
    end

    assert_redirected_to tipo_de_projetos_url
  end
end
