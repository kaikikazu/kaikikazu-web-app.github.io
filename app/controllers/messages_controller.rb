class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end
  
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path , notice: 'メッセージを保存しました'
    else
      redirect_to root_path , notice: 'メッセージを保存しました'
    end
  end
  
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to root_path, notice: 'メッセージを削除しました'
end
  
  private
  def message_params
    params.require(:message).permit(:name, :body)
  end

  
end
