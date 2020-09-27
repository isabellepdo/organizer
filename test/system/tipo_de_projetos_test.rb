require "application_system_test_case"

class TipoDeProjetosTest < ApplicationSystemTestCase
  setup do
    @tipo_de_projeto = tipo_de_projetos(:one)
  end

  test "visiting the index" do
    visit tipo_de_projetos_url
    assert_selector "h1", text: "Tipo De Projetos"
  end

  test "creating a Tipo de projeto" do
    visit tipo_de_projetos_url
    click_on "New Tipo De Projeto"

    fill_in "Tipo", with: @tipo_de_projeto.tipo
    click_on "Create Tipo de projeto"

    assert_text "Tipo de projeto was successfully created"
    click_on "Back"
  end

  test "updating a Tipo de projeto" do
    visit tipo_de_projetos_url
    click_on "Edit", match: :first

    fill_in "Tipo", with: @tipo_de_projeto.tipo
    click_on "Update Tipo de projeto"

    assert_text "Tipo de projeto was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo de projeto" do
    visit tipo_de_projetos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo de projeto was successfully destroyed"
  end
end
