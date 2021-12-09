require "application_system_test_case"

class InformazionisTest < ApplicationSystemTestCase
  setup do
    @informazioni = informazionis(:one)
  end

  test "visiting the index" do
    visit informazionis_url
    assert_selector "h1", text: "Informazionis"
  end

  test "creating a Informazioni" do
    visit informazionis_url
    click_on "New Informazioni"

    fill_in "Cognome", with: @informazioni.cognome
    fill_in "Email", with: @informazioni.email
    fill_in "Nome", with: @informazioni.nome
    fill_in "Telefono", with: @informazioni.telefono
    click_on "Create Informazioni"

    assert_text "Informazioni was successfully created"
    click_on "Back"
  end

  test "updating a Informazioni" do
    visit informazionis_url
    click_on "Edit", match: :first

    fill_in "Cognome", with: @informazioni.cognome
    fill_in "Email", with: @informazioni.email
    fill_in "Nome", with: @informazioni.nome
    fill_in "Telefono", with: @informazioni.telefono
    click_on "Update Informazioni"

    assert_text "Informazioni was successfully updated"
    click_on "Back"
  end

  test "destroying a Informazioni" do
    visit informazionis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Informazioni was successfully destroyed"
  end
end
