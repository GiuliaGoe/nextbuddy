class UserCharacteristicsController < ApplicationController
  before_action :set_personal, only: [:edit_personal, :update_personal]
  before_action :set_professional, only: [:edit_professional, :update_professional]
  before_action :set_meeting_availability, only: [:edit_meeting_availability, :update_meeting_availability]

  def edit_personal

  end

  def update_personal
    @user = current_user
    # add in availabilities and activities
    @selected_activities = [
      params[:select_coffee], params[:select_running],
      params[:select_jogging], params[:select_lunch],
      params[:select_swimming], params[:select_dog],
      params[:select_beer], params[:select_bubbles],
      nil
    ].compact!

    @selected_periods = [
      params[:select_morning], params[:select_noon],
      params[:select_afternoon], params[:select_evening],
      nil
    ].compact!

    @selected_days = [
      params[:select_mondays], params[:select_tuesdays],
      params[:select_wednesdays], params[:select_thursdays],
      params[:select_fridays],
      nil
    ].compact!

    current_user.address = params[:user][:address] if params[:user][:address]
    current_user.bio = params[:user][:bio] if params[:user][:bio]

    activities = current_user.activities.pluck(:description)
    @selected_activities.each do |activity|
      # We make sure that we only add the activity to the user if he or she does not have it yet.
      current_user.activities.create(description: activity) unless activities.include?(activity)
    end

    if @selected_days && @selected_periods
      current_user.availabilities.create(
        day_of_week: @selected_days.first,
        period_of_day: @selected_periods.first
      )
    end

    @selected_skills = [
      params[:skills1], params[:skills2],
      params[:skills3],
      nil
    ].compact!

    user_skills = current_user.skills.pluck(:name)
    @selected_skills.each do |skill|
      current_user.skills.create(name: skill) unless user_skills.include?(skill)
    end

    @selected_pi_names = [
      params[:pi_name_1], params[:pi_name_2],
      params[:pi_name_3],
      nil
    ].compact!

    user_pis = current_user.professional_interests.pluck(:name)
    @selected_pi_names.each do |pi_name|
      current_user.professional_interests.create(name: pi_name) unless user_pis.include?(pi_name)
    end

    current_user.save

    update_professional
  end

  def update_professional
    if current_user.career_positions.none?
      # If the user does not have a career yet we create one.
      @career_position = CareerPosition.create(user_id: current_user.id)

      newcomp = Company.create(name: params["cp_company"])
      @career_position.company = newcomp

      newjob = JobTitle.create(name: params["cp_job_title"])
      @career_position.job_title = newjob
    else
      # if the user has a career we update it.
      @career_position = current_user.current_position

      job_title = @career_position.job_title
      job_title.name = params["cp-job-title"]

      company = @career_position.company
      company.name = params["cp-company"]
    end
    @career_position.save!
    if current_user.save
      redirect_to user_path(current_user)
      flash[:notice] = "Great Succes"
    else
      redirect_to profile_personal_path
      flash[:error] = "Something went wrong."
    end
  end

  private

  def set_personal
    @user = current_user
  end

  def set_professional
    @skill = Skill.find(params[:id])
    @professional_interest = ProfessionalInterest.find(params[:id])
    @user = User.find(params[:id])
  end

  def set_meeting_availability
    @availability = Availability.find(params[:id])
    @activity = Activity.find(params[:id])
    @user = User.find(params[:id])
  end

  def personal_params
    params.require(:user).permit(:photo, :address, :radius, :professional_goal, :bio)
  end

  def professional_params
    params.require(:skill).permit(:name)
    params.require(:professional_interest).permit(:name)
  end

  def meeting_availability_params
    params.require(:availability).permit(:day_of_week, :period_of_day)
    params.require(:activity).permit(:description)
  end
end
