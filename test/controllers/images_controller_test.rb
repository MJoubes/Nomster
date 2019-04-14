require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image = images(:one)
  end

  test "should get index" do
    get images_url
    assert_response :success
  end

  test "should get new" do
    get new_photo
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post images_url, params: { image: { caption: @image.caption, title: @image.title } }
    end

    assert_redirected_to photo(Image.last)
  end

  test "should show image" do
    get photo(@image)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo(@image)
    assert_response :success
  end

  test "should update image" do
    patch photo(@image), params: { image: { caption: @image.caption, title: @image.title } }
    assert_redirected_to photo(@image)
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete photo(@image)
    end

    assert_redirected_to images_url
  end
end
