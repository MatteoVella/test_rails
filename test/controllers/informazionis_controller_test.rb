require "test_helper"

class InformazionisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @informazioni = informazionis(:one)
  end

  test "should get index" do
    get informazionis_url
    assert_response :success
  end

  test "should get new" do
    get new_informazioni_url
    assert_response :success
  end

  test "should create informazioni" do
    assert_difference('Informazioni.count') do
      post informazionis_url, params: { informazioni: { cognome: @informazioni.cognome, email: @informazioni.email, nome: @informazioni.nome, telefono: @informazioni.telefono } }
    end

    assert_redirected_to informazioni_url(Informazioni.last)
  end

  test "should show informazioni" do
    get informazioni_url(@informazioni)
    assert_response :success
  end

  test "should get edit" do
    get edit_informazioni_url(@informazioni)
    assert_response :success
  end

  test "should update informazioni" do
    patch informazioni_url(@informazioni), params: { informazioni: { cognome: @informazioni.cognome, email: @informazioni.email, nome: @informazioni.nome, telefono: @informazioni.telefono } }
    assert_redirected_to informazioni_url(@informazioni)
  end

  test "should destroy informazioni" do
    assert_difference('Informazioni.count', -1) do
      delete informazioni_url(@informazioni)
    end

    assert_redirected_to informazionis_url
  end
end
