class UserCharacteristicsController < ApplicationController
  before_action :set_personal, only: [:edit_personal, :update_personal]
  before_action :set_professional, only: [:edit_professional, :update_professional]
  before_action :set_meeting_availability, only: [:edit_meeting_availability, :update_meeting_availability]

  # def edit_personal
  # end

  # def edit_professional
  # end


  def update_personal
    # add in availabilities and activities
    @selected_activities = []
    @selected_activities << params[:select_coffee]
    @selected_activities << params[:select_running]
    @selected_activities << params[:select_jogging]
    @selected_activities << params[:select_lunch]
    @selected_activities << params[:select_swimming]
    @selected_activities << params[:select_dog]
    @selected_activities << params[:select_beer]
    @selected_activities << params[:select_bubbles]
    @selected_activities.compact!
    @selected_periods = []
    @selected_periods << params[:select_morning]
    @selected_periods << params[:select_noon]
    @selected_periods << params[:select_afternoon]
    @selected_periods << params[:select_evening]
    @selected_periods.compact!
    @selected_days = []
    @selected_days << params[:select_mondays]
    @selected_days << params[:select_tuesdays]
    @selected_days << params[:select_wednesdays]
    @selected_days << params[:select_thursdays]
    @selected_days << params[:select_fridays]
    @selected_days.compact!

    current_user.address = params[:user][:address]
    current_user.bio = params[:user][:bio]

    @selected_activities.each do |activity|
      current_user.activities.create(description: activity)
    end

    @selected_periods.each do |period|
      current_user.availabilities.create(period_of_day: period)
    end

    @selected_days.each do |day|
      current_user.availabilities.create(day_of_week: day)
    end

    selected_skills = []
    selected_skills << params[:skills1]
    selected_skills << params[:skills2]
    selected_skills << params[:skills3]
    @selected_skills = selected_skills

    @selected_skills.each do |skill|
      current_user.skills.create(name: skill)
    end

    selected_pi_names = []
    selected_pi_names << params[:pi_name_1]
    selected_pi_names << params[:pi_name_2]
    selected_pi_names << params[:pi_name_3]
    @selected_pi_names = selected_pi_names
    @selected_pi_names.each do |pi_name|
      current_user.professional_interests.create(name: pi_name)
    end

    current_user.save

    update_professional
  end

  def update_professional

      # if current_user.career_positions.any?
      # current_user.career_positions.destroy_all
      # end
      # # industry = Industry.create(name: params["cp-industry"])
      # job_function = JobFunction.create(name: params["cp-functions"])


      @career_position = CareerPosition.create(user_id: current_user.id)

      newcomp = Company.create(name: params[:cp_company])
      newjob = JobTitle.create(name: params[:cp_job_title])
      @career_position.company_id = newcomp.id
      @career_position.job_title_id = newjob.id
      # raise

    # else
    #   career_position = current_user.current_position

    #   job_title = career_position.job_title
    #   job_title.name = params["cp-job-title"]

    #   company = career_position.company
    #   company.name = params["cp-company"]

    @career_position.save!
    # professional_interest = ProfessionalInterest.create(name: params["pi-name"])
    # @selected_professionalinterests = []

    # current_user.professional_interests.create(name: params[])
    # skills = Skill.create(name: params["skills"])
    current_user.save

    # Skill.find(current_user.id) = params["skills"]
    # save
    redirect_to users_path
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
