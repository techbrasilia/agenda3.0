require "application_system_test_case"

class EmpregadosTest < ApplicationSystemTestCase
  setup do
    @empregado = empregados(:one)
  end

  test "visiting the index" do
    visit empregados_url
    assert_selector "h1", text: "Empregados"
  end

  test "creating a Empregado" do
    visit empregados_url
    click_on "New Empregado"

    fill_in "Compromisso", with: @empregado.compromisso_id
    fill_in "Cpf", with: @empregado.cpf
    fill_in "Email", with: @empregado.email
    fill_in "Empresa", with: @empregado.empresa_id
    fill_in "Nome", with: @empregado.nome
    click_on "Create Empregado"

    assert_text "Empregado was successfully created"
    click_on "Back"
  end

  test "updating a Empregado" do
    visit empregados_url
    click_on "Edit", match: :first

    fill_in "Compromisso", with: @empregado.compromisso_id
    fill_in "Cpf", with: @empregado.cpf
    fill_in "Email", with: @empregado.email
    fill_in "Empresa", with: @empregado.empresa_id
    fill_in "Nome", with: @empregado.nome
    click_on "Update Empregado"

    assert_text "Empregado was successfully updated"
    click_on "Back"
  end

  test "destroying a Empregado" do
    visit empregados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empregado was successfully destroyed"
  end
end
