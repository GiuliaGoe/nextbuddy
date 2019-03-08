class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:edit, :update]
  def index
    @received_meetings = Meeting.where(recipient_id: current_user.id)
    @sent_meetings = Meeting.where(sender_id: current_user.id)
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @recipient = User.find(params[:user_id])
    @currentuser = User.find(current_user.id)

    @meeting = Meeting.new
    @meeting.status = 'pending',
    @meeting.meeting_date_time = params[:datetime],
    @meeting.suggested_activity = params[:activity],
    @meeting.meeting_location = params[:topic],
    @meeting.sender_id = @currentuser.id
    @meeting.recipient_id = @recipient.id

    # raise
    # meeting = Meeting.new(meeting_params)
    # meeting.sender_id = current_user
    # meeting.status = 'Pending'
    # Please remember to include meeting_location in private meeting_params when updating meetings_form for location setting between recipient and sender (by Jonas, 5 March 2019)
    # meeting.meeting_location = meeting.recipient.address
    if @meeting.save
      redirect_to my_meetings_path, notice: "Congrats. You have sent a meeting request."
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

  def meeting_params
    params.require(:meeting).permit(:meeting_date_time, :suggested_activity, :recipient_id)
  end
end
