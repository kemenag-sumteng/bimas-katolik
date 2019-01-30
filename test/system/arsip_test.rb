require "application_system_test_case"

class ArsipTest < ApplicationSystemTestCase
  setup do
    @arsip = arsip(:one)
  end

  test "visiting the index" do
    visit arsip_url
    assert_selector "h1", text: "Arsip"
  end

  test "creating a Arsip" do
    visit arsip_url
    click_on "New Arsip"

    fill_in "Judul", with: @arsip.judul
    fill_in "Keterangan", with: @arsip.keterangan
    click_on "Create Arsip"

    assert_text "Arsip was successfully created"
    click_on "Back"
  end

  test "updating a Arsip" do
    visit arsip_url
    click_on "Edit", match: :first

    fill_in "Judul", with: @arsip.judul
    fill_in "Keterangan", with: @arsip.keterangan
    click_on "Update Arsip"

    assert_text "Arsip was successfully updated"
    click_on "Back"
  end

  test "destroying a Arsip" do
    visit arsip_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arsip was successfully destroyed"
  end
end
