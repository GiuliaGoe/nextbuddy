class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:create, :edit, :update]
  def index
    @meetings = Meeting.where(recipient_id == current_user || sender_id == current_user)
  end

  def new
    @meeting = Meeting.new
  end

  def create
    meeting = Meeting.new(meeting_params)
    meeting.sender_id = current_user
    meeting.status = 'Pending'
    # Please remember to include meeting_location in private meeting_params when updating meetings_form for location setting between recipient and sender (by Jonas, 5 March 2019)
    meeting.meeting_location = meeting.recipient.address
    if meeting.save
      redirect_to mymeetings_path, notice: "Congrats. You have sent a meeting request to #{meeting.recipient.name}."
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
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:meeting_date_time, :suggested_activity, :recipient_id)
  end
end
