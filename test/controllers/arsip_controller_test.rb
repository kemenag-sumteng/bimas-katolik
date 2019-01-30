require 'test_helper'

class ArsipControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arsip = arsip(:one)
  end

  test "should get index" do
    get arsip_index_url
    assert_response :success
  end

  test "should get new" do
    get new_arsip_url
    assert_response :success
  end

  test "should create arsip" do
    assert_difference('Arsip.count') do
      post arsip_index_url, params: { arsip: { judul: @arsip.judul, keterangan: @arsip.keterangan } }
    end

    assert_redirected_to arsip_url(Arsip.last)
  end

  test "should show arsip" do
    get arsip_url(@arsip)
    assert_response :success
  end

  test "should get edit" do
    get edit_arsip_url(@arsip)
    assert_response :success
  end

  test "should update arsip" do
    patch arsip_url(@arsip), params: { arsip: { judul: @arsip.judul, keterangan: @arsip.keterangan } }
    assert_redirected_to arsip_url(@arsip)
  end

  test "should destroy arsip" do
    assert_difference('Arsip.count', -1) do
      delete arsip_url(@arsip)
    end

    assert_redirected_to arsip_index_url
  end
end
