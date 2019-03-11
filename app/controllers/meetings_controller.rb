class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:edit, :update]
  before_action :find_meeting, only: [:accept, :decline, :cancel, :pending]
  def index
    @pending_meetings = Meeting.all.where(status: "pending")
    @accepted_meetings = Meeting.all.where(status: "accepted")
    @declined_meetings = Meeting.all.where(status: "declined")
    @cancelled_meetings = Meeting.all.where(status: "cancelled")
    @received_meetings = Meeting.where(recipient_id: current_user.id)
    @sent_meetings = Meeting.where(sender_id: current_user.id)
  end

  def new
    @meeting = Meeting.new
    @user = User.find(params[:user_id])
  end

  def preview
    @user = User.find(params[:user_id])
    @current_user = current_user
    # Here we will send some data to a js view to render the preview
  end

  def accept
    @meeting.status = "accepted"
    @meeting.save
    redirect_to my_meetings_path
  end

  def decline
    @meeting.status = "declined"
    @meeting.save
    redirect_to my_meetings_path
  end

  def cancel
    @meeting.status = "cancelled"
    @meeting.save
    redirect_to my_meetings_path
  end

  def pending
    @meeting.status = "pending"
    @meeting.save
    redirect_to my_meetings_path
  end

  def create
    @recipient = User.find(params[:user_id])
    @currentuser = User.find(current_user.id)

    @meeting = Meeting.new
    @meeting.status = "pending",
    @meeting.meeting_date_time = params[:datetime],
    @meeting.suggested_activity = params[:activity],
    @meeting.meeting_location = params[:meeting_location],
    @meeting.topic = params[:topic]
    @meeting.sender_id = @currentuser.id
    @meeting.recipient_id = @recipient.id

    if @meeting.save
      redirect_to pending_meeting_path(@meeting), notice: "Congrats. You have sent a meeting request."
    else
      render :new
    end
  end

  def edit
  end

  def update
    @meeting.update(meeting_params)
  end

  private

  def set_meeting
    @meeting = Meeting.find(params[:user_id])
    # redirect_to my_meetings_path
    # flash[:notice] = "Meeting request successfully sent."
  end

  def find_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:meeting_date_time, :suggested_activity, :recipient_id, :meeting_location, :topic)
  end

end
