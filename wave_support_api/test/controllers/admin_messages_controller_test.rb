require 'test_helper'

class AdminMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_message = admin_messages(:one)
  end

  test "should get index" do
    get admin_messages_url, as: :json
    assert_response :success
  end

  test "should create admin_message" do
    assert_difference('AdminMessage.count') do
      post admin_messages_url, params: { admin_message: { admin_id: @admin_message.admin_id, body: @admin_message.body, ticket_id: @admin_message.ticket_id, title: @admin_message.title } }, as: :json
    end

    assert_response 201
  end

  test "should show admin_message" do
    get admin_message_url(@admin_message), as: :json
    assert_response :success
  end

  test "should update admin_message" do
    patch admin_message_url(@admin_message), params: { admin_message: { admin_id: @admin_message.admin_id, body: @admin_message.body, ticket_id: @admin_message.ticket_id, title: @admin_message.title } }, as: :json
    assert_response 200
  end

  test "should destroy admin_message" do
    assert_difference('AdminMessage.count', -1) do
      delete admin_message_url(@admin_message), as: :json
    end

    assert_response 204
  end
end
