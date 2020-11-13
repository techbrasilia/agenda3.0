require "application_system_test_case"

class CompromissosTest < ApplicationSystemTestCase
  setup do
    @compromisso = compromissos(:one)
  end

  test "visiting the index" do
    visit compromissos_url
    assert_selector "h1", text: "Compromissos"
  end

  test "creating a Compromisso" do
    visit compromissos_url
    click_on "New Compromisso"

    fill_in "Data", with: @compromisso.data
    fill_in "Empregado", with: @compromisso.empregado_id
    fill_in "Hora", with: @compromisso.hora
    fill_in "Tipo", with: @compromisso.tipo
    click_on "Create Compromisso"

    assert_text "Compromisso was successfully created"
    click_on "Back"
  end

  test "updating a Compromisso" do
    visit compromissos_url
    click_on "Edit", match: :first

    fill_in "Data", with: @compromisso.data
    fill_in "Empregado", with: @compromisso.empregado_id
    fill_in "Hora", with: @compromisso.hora
    fill_in "Tipo", with: @compromisso.tipo
    click_on "Update Compromisso"

    assert_text "Compromisso was successfully updated"
    click_on "Back"
  end

  test "destroying a Compromisso" do
    visit compromissos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compromisso was successfully destroyed"
  end
end
