require "application_system_test_case"

class AtividadeDaTarefaPorProjetosTest < ApplicationSystemTestCase
  setup do
    @atividade_da_tarefa_por_projeto = atividade_da_tarefa_por_projetos(:one)
  end

  test "visiting the index" do
    visit atividade_da_tarefa_por_projetos_url
    assert_selector "h1", text: "Atividade Da Tarefa Por Projetos"
  end

  test "creating a Atividade da tarefa por projeto" do
    visit atividade_da_tarefa_por_projetos_url
    click_on "New Atividade Da Tarefa Por Projeto"

    fill_in "Nome", with: @atividade_da_tarefa_por_projeto.nome
    fill_in "Prazo", with: @atividade_da_tarefa_por_projeto.prazo
    fill_in "Status", with: @atividade_da_tarefa_por_projeto.status
    fill_in "Tarefa do projetos", with: @atividade_da_tarefa_por_projeto.tarefa_do_projetos_id
    click_on "Create Atividade da tarefa por projeto"

    assert_text "Atividade da tarefa por projeto was successfully created"
    click_on "Back"
  end

  test "updating a Atividade da tarefa por projeto" do
    visit atividade_da_tarefa_por_projetos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @atividade_da_tarefa_por_projeto.nome
    fill_in "Prazo", with: @atividade_da_tarefa_por_projeto.prazo
    fill_in "Status", with: @atividade_da_tarefa_por_projeto.status
    fill_in "Tarefa do projetos", with: @atividade_da_tarefa_por_projeto.tarefa_do_projetos_id
    click_on "Update Atividade da tarefa por projeto"

    assert_text "Atividade da tarefa por projeto was successfully updated"
    click_on "Back"
  end

  test "destroying a Atividade da tarefa por projeto" do
    visit atividade_da_tarefa_por_projetos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atividade da tarefa por projeto was successfully destroyed"
  end
end
