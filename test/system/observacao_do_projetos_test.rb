require "application_system_test_case"

class ObservacaoDoProjetosTest < ApplicationSystemTestCase
  setup do
    @observacao_do_projeto = observacao_do_projetos(:one)
  end

  test "visiting the index" do
    visit observacao_do_projetos_url
    assert_selector "h1", text: "Observacao Do Projetos"
  end

  test "creating a Observacao do projeto" do
    visit observacao_do_projetos_url
    click_on "New Observacao Do Projeto"

    fill_in "Mensagem", with: @observacao_do_projeto.mensagem
    fill_in "Projeto", with: @observacao_do_projeto.projeto_id
    fill_in "User", with: @observacao_do_projeto.user_id
    click_on "Create Observacao do projeto"

    assert_text "Observacao do projeto was successfully created"
    click_on "Back"
  end

  test "updating a Observacao do projeto" do
    visit observacao_do_projetos_url
    click_on "Edit", match: :first

    fill_in "Mensagem", with: @observacao_do_projeto.mensagem
    fill_in "Projeto", with: @observacao_do_projeto.projeto_id
    fill_in "User", with: @observacao_do_projeto.user_id
    click_on "Update Observacao do projeto"

    assert_text "Observacao do projeto was successfully updated"
    click_on "Back"
  end

  test "destroying a Observacao do projeto" do
    visit observacao_do_projetos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Observacao do projeto was successfully destroyed"
  end
end
