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
    current_user.radius = params[:user][:radius].to_i
    current_user.address = params[:user][:address]
    current_user.bio = params[:user][:bio]
    current_user.save
    update_professional
  end

  def update_professional
    if !current_user.career_positions.any?
      job_title = JobTitle.create(name: params["cp-job-title"])
      company = Company.create(name: params["cp-company"])
      industry = Industry.create(name: params["cp-industry"])
      job_function = JobFunction.create(name: params["cp-functions"])

      career_position = CareerPosition.create(user: current_user)

      career_position.company = company
      career_position.job_title = job_title
      career_position.industry = industry
      career_position.job_function = job_function
    else
      career_position = current_user.current_position

      job_title = JobTitle.find_by(career_position: career_position)
      job_title.name = params["cp-job-title"]

      company = Company.find_by(career_position: career_position)
      company.name = params["cp-company"]

      industry = Industry.find(career_position: career_position)
      industry.name = params["cp-industry"]

      job_function = JobFunction.find(career_position: career_position)
      job_function.name = params["cp-functions"]

    end

    career_position.save!

    raise

    ProfessionalInterest.find(career_position.id).name = params["pi-name"]
    current_user.professional_goal = params[:user][:professional_goal]
    # Skill.find(current_user.id) = params["skills"]
    # save
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
