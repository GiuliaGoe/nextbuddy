class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:edit, :update]
  before_action :find_meeting, only: [:accept, :decline, :cancel, :pending]
  def index
    @mymeetings = Meeting.where(sender_id: current_user.id).or(Meeting.where(recipient_id: current_user.id))
    @pending_meetings = @mymeetings.where(status: "pending").where("meeting_date_time > :time", time: Time.now.beginning_of_day)
    @past_meetings = @mymeetings.where(status: "accepted").where("meeting_date_time < :time", time: Time.now.beginning_of_day)
    @accepted_meetings = @mymeetings.where(status: "accepted").where("meeting_date_time > :time", time: Time.now.beginning_of_day)
  end

  def new
    @meeting = Meeting.new
    @user = User.find(params[:user_id])
    @relevant_times = @user.availabilities.map(&:available_time_periods).flatten
    @relevant_dates = @user.availabilities.map(&:available_days).flatten
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
    @meeting = Meeting.new
    @meeting.meeting_location = params[:meeting_location]
    @meeting.topic = params[:topic]
    @meeting.status = "pending"
    @recipient = User.find(params[:user_id])
    @currentuser = User.find(current_user.id)
    @meeting.sender_id = @currentuser.id
    @meeting.recipient_id = @recipient.id
    string_to_date_time
    date_time_to_string
    @meeting.meeting_date_time = @new_string.to_s
    selected_activity
    @meeting.suggested_activity = @selected_activity
    # @meeting.save
    if @meeting.save
      redirect_to pending_meeting_path(@meeting), notice: "Congrats. You have sent a meeting request."
    else
      render :new
    end
  end

  def string_to_date_time
    new_string = params[:radrelevant_dates] + " " + params[:radrelevant_times]
    @new_date = new_string.to_datetime
  end

  def date_time_to_string
    @new_string = @new_date.strftime("%A, %e %B at%l:%M %p")
  end

  def selected_activity
    @selected_activity = params[:radrelevant_activities]
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
