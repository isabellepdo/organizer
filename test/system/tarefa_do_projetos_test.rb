require "application_system_test_case"

class TarefaDoProjetosTest < ApplicationSystemTestCase
  setup do
    @tarefa_do_projeto = tarefa_do_projetos(:one)
  end

  test "visiting the index" do
    visit tarefa_do_projetos_url
    assert_selector "h1", text: "Tarefa Do Projetos"
  end

  test "creating a Tarefa do projeto" do
    visit tarefa_do_projetos_url
    click_on "New Tarefa Do Projeto"

    fill_in "Descricao", with: @tarefa_do_projeto.descricao
    fill_in "Link nuvem", with: @tarefa_do_projeto.link_nuvem
    fill_in "Prazo", with: @tarefa_do_projeto.prazo
    fill_in "Projeto", with: @tarefa_do_projeto.projeto_id
    fill_in "Status", with: @tarefa_do_projeto.status
    fill_in "Tarefa", with: @tarefa_do_projeto.tarefa_id
    fill_in "User", with: @tarefa_do_projeto.user_id
    click_on "Create Tarefa do projeto"

    assert_text "Tarefa do projeto was successfully created"
    click_on "Back"
  end

  test "updating a Tarefa do projeto" do
    visit tarefa_do_projetos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @tarefa_do_projeto.descricao
    fill_in "Link nuvem", with: @tarefa_do_projeto.link_nuvem
    fill_in "Prazo", with: @tarefa_do_projeto.prazo
    fill_in "Projeto", with: @tarefa_do_projeto.projeto_id
    fill_in "Status", with: @tarefa_do_projeto.status
    fill_in "Tarefa", with: @tarefa_do_projeto.tarefa_id
    fill_in "User", with: @tarefa_do_projeto.user_id
    click_on "Update Tarefa do projeto"

    assert_text "Tarefa do projeto was successfully updated"
    click_on "Back"
  end

  test "destroying a Tarefa do projeto" do
    visit tarefa_do_projetos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tarefa do projeto was successfully destroyed"
  end
end
