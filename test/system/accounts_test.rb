require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  setup do
    @account = accounts(:one)
  end

  test "visiting the index" do
    visit accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "should create account" do
    visit accounts_url
    click_on "New account"

    fill_in "Apellido", with: @account.apellido
    fill_in "Deviceid", with: @account.deviceid
    fill_in "Mail", with: @account.mail
    fill_in "Nombre", with: @account.nombre
    fill_in "Users", with: @account.users
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "should update Account" do
    visit account_url(@account)
    click_on "Edit this account", match: :first

    fill_in "Apellido", with: @account.apellido
    fill_in "Deviceid", with: @account.deviceid
    fill_in "Mail", with: @account.mail
    fill_in "Nombre", with: @account.nombre
    fill_in "Users", with: @account.users
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "should destroy Account" do
    visit account_url(@account)
    click_on "Destroy this account", match: :first

    assert_text "Account was successfully destroyed"
  end
end
