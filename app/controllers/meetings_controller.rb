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
    # 1 get todays date
    today
    # 2 get next 14 days with corresponding weekdays for example Monday 20th
    next14days
    # 3 select the days from 2 that correspond with user availabilities weekdays
    # 4 store these in a list that is displayed in the form in the view
    relevant_dates
    relevant_times
    relevant_activities
  end

  def today
    today = Date.today
  end

  def next14days
    array = [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
    next14days = []
    array.each do |day|
      next14days << today + day
    end
    next14days
  end

   def relevant_times
      @relevant_times = []
      available_periods = []
      @user.availabilities.each do |avail|
         available_periods << avail.period_of_day
      end
      if available_periods.include?("morning")
        @relevant_times << '7:00'
        @relevant_times << '7:30'
        @relevant_times << '8:00'
        @relevant_times << '8:30'
        @relevant_times << '9:00'
        @relevant_times << '9:30'
     end

      if available_periods.include?("noon")
        @relevant_times << '11:00'
        @relevant_times << '11:30'
        @relevant_times << '12:00'
        @relevant_times << '12:30'
        @relevant_times << '13:00'
        @relevant_times << '13:30'
     end

      if available_periods.include?("afternoon")
        @relevant_times << '14:00'
        @relevant_times << '14:30'
        @relevant_times << '15:00'
        @relevant_times << '15:30'
        @relevant_times << '16:00'
        @relevant_times << '16:30'
     end
      if available_periods.include?("evening")
        @relevant_times << '17:00'
        @relevant_times << '17:30'
        @relevant_times << '18:00'
        @relevant_times << '18:30'
        @relevant_times << '19:00'
        @relevant_times << '19:30'
      end
      @relevant_times
   end

   def relevant_dates
    @relevant_dates = []
    available_weekdays = []
    @user.availabilities.each do |avail|
      available_weekdays << avail.day_of_week
    end
    next14days.each do |date|
      if available_weekdays.include?(number_to_weekday(date.wday))
        @relevant_dates << date
      end
    end
    @relevant_dates
   end


  def number_to_weekday(number)
    if number == 0
      return "Sunday"
    elsif number == 1
      return "Monday"
    elsif number == 2
      return "Tuesday"
    elsif number == 3
      return "Wednesday"
    elsif number == 4
      return "Thursday"
    elsif number == 5
      return "Friday"
    elsif number == 6
      return "Saturday"
    end
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
    # raise

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

  def relevant_activities
    @relevant_activities = []
    available_activities = []
    @user.activities.each do |avail|
      available_activities << avail.description
    end

    if available_activities.include?("have lunch")
      @relevant_activities << 'have lunch'
    end

    if available_activities.include?("go swimming")
       @relevant_activities << 'go swimming'
    end

    if available_activities.include?("go running")
      @relevant_activities << 'go running'
    end

    if available_activities.include?("go jogging")
      @relevant_activities << 'go jogging'
    end

    if available_activities.include?("have a coffee")
      @relevant_activities << 'have a coffee'
    end

    if available_activities.include?("blow bubbles")
      @relevant_activities << 'blow bubbles'
    end

    if available_activities.include?("drink a beer")
      @relevant_activities << 'drink a beer'
    end

    if available_activities.include?("walk the dog")
      @relevant_activities << 'walk the dog'
    end
    @relevant_activities
  end

def relevant_times
  @relevant_times = []
  available_periods = []
  @user.availabilities.each do |avail|
    available_periods << avail.period_of_day
  end
  if available_periods.include?("morning")
    @relevant_times << '7:00'
    @relevant_times << '7:30'
    @relevant_times << '8:00'
    @relevant_times << '8:30'
    @relevant_times << '9:00'
    @relevant_times << '9:30'
  end

  if available_periods.include?("noon")
    @relevant_times << '11:00'
    @relevant_times << '11:30'
    @relevant_times << '12:00'
    @relevant_times << '12:30'
    @relevant_times << '13:00'
    @relevant_times << '13:30'
  end

  if available_periods.include?("afternoon")
    @relevant_times << '14:00'
    @relevant_times << '14:30'
    @relevant_times << '15:00'
    @relevant_times << '15:30'
    @relevant_times << '16:00'
    @relevant_times << '16:30'
  end
  if available_periods.include?("evening")
    @relevant_times << '17:00'
    @relevant_times << '17:30'
    @relevant_times << '18:00'
    @relevant_times << '18:30'
    @relevant_times << '19:00'
    @relevant_times << '19:30'
  end
  @relevant_times
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
