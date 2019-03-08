class UserCharacteristicsController < ApplicationController
  before_action :set_personal, only: [:edit_personal, :update_personal]
  before_action :set_professional, only: [:edit_professional, :update_professional]
  before_action :set_meeting_availability, only: [:edit_meeting_availability, :update_meeting_availability]

  def edit_personal
    set_personal
  end

  def update_personal
    if current_user == @user
      @user.update(personal_params)
    else
      redirect_to users_path, notice: "You are not allowed to edit this profile."
    end
  end

  def edit_professional
    set_professional
  end

  def update_professional
    if current_user == @user
      @skill.update(professional_params)
      @professional_interest.update(professional_params)
      @user.update(personal_params)
    else
      redirect_to users_path, notice: "You are not allowed to edit this profile."
    end
  end

  def edit_meeting_availability
    set_meeting_availability
  end

  def update_meeting_availability
    if current_user == @user
      @availability.update(meeting_availability_params)
      @activity.update(meeting_availability_params)
    else
      redirect_to users_path, notice: "You are not allowed to edit this profile."
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
