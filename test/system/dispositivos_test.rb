require "application_system_test_case"

class DispositivosTest < ApplicationSystemTestCase
  setup do
    @dispositivo = dispositivos(:one)
  end

  test "visiting the index" do
    visit dispositivos_url
    assert_selector "h1", text: "Dispositivos"
  end

  test "should create dispositivo" do
    visit dispositivos_url
    click_on "New dispositivo"

    fill_in "Devices", with: @dispositivo.devices
    fill_in "Identificador", with: @dispositivo.identificador
    fill_in "Mail", with: @dispositivo.mail
    fill_in "Prioridad", with: @dispositivo.prioridad
    click_on "Create Dispositivo"

    assert_text "Dispositivo was successfully created"
    click_on "Back"
  end

  test "should update Dispositivo" do
    visit dispositivo_url(@dispositivo)
    click_on "Edit this dispositivo", match: :first

    fill_in "Devices", with: @dispositivo.devices
    fill_in "Identificador", with: @dispositivo.identificador
    fill_in "Mail", with: @dispositivo.mail
    fill_in "Prioridad", with: @dispositivo.prioridad
    click_on "Update Dispositivo"

    assert_text "Dispositivo was successfully updated"
    click_on "Back"
  end

  test "should destroy Dispositivo" do
    visit dispositivo_url(@dispositivo)
    click_on "Destroy this dispositivo", match: :first

    assert_text "Dispositivo was successfully destroyed"
  end
end
