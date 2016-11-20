class MessagesController < ApplicationController
  def index
    @messages = Message.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    message = Message.new(name: params[:name], content: params[:content])
    message.save
    render 'create.html.erb'
  end

  def show
    @message = Message.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
