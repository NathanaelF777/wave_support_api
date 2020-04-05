class AdminMessagesController < ApplicationController
  before_action :set_admin_message, only: [:show, :update, :destroy]

  # GET /admin_messages
  def index
    @admin_messages = AdminMessage.all

    render json: @admin_messages
  end

  # GET /admin_messages/1
  def show
    render json: @admin_message
  end

  # POST /admin_messages
  def create
    @admin_message = AdminMessage.new(admin_message_params)

    if @admin_message.save
      render json: @admin_message, status: :created, location: @admin_message
    else
      render json: @admin_message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admin_messages/1
  def update
    if @admin_message.update(admin_message_params)
      render json: @admin_message
    else
      render json: @admin_message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admin_messages/1
  def destroy
    @admin_message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_message
      @admin_message = AdminMessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_message_params
      params.require(:admin_message).permit(:title, :body, :admin_id, :ticket_id)
    end
end
