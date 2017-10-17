class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :confirm, :create, :show]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  def index
    @events = Event.all
  end
  
  def show

    #@comment = @event.comments.build
    #@comments = @event.comments
    #Notification.find(params[:notification_id]).update(read: true) if params[:notification_id]
  end
  
  def confirm
    @event = Event.new(events_params)
    render :new if @event.invalid?
  end

  def new
    #@event = Event.new
    if params[:back]
      @event = Event.new(events_params)
    else
      @event = Event.new
    end
  end

  def create
    @event = Event.new(events_params)
    @event.user_id = current_user.id
    
    # @comment = @blog.comments.build
    # @comments = @blog.comments
    
    #@map = @event.maps.build
    # @maps = @event.maps
    #@map.address = @event.title
    
    # @maps = Map.all
    # @hash = Gmaps4rails.build_markers(@maps) do |map, marker|
    #   marker.lat map.latitude
    #   marker.lng map.longitude
    #   marker.infowindow map.description
    #   marker.json({title: map.title})
    # end
    
    @map.description = event.content
    if @event.save
        redirect_to events_path, notice: "イベントを作成しました!"
       # NoticeMailer.sendmail_event(@event).deliver
    else
        render action: 'new'
    end
  end

  def edit
    #@event = Event.find(params[:id])
  end

  def update
    #@event = Event.find(params[:id])

    if @event.update(events_params)
      redirect_to events_path, notice: "ブログを更新しました!"
    else
    render action: 'edit'
    end
  end

  def destroy
    #@event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, notice: "ブログを削除しました!"
  end


  private
  def events_params
    params.require(:event).permit(:title, :content)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
