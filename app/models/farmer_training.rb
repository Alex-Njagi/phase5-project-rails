class FarmerTraining < ApplicationRecord
  belongs_to :user

  before_save :fill_user_name, :set_registration_fee, :format_training_date!, :calculate_total_training_cost

  def fill_user_name
    self.user_name = user.user_name
  end

  def set_registration_fee
    self.registration_fee = 7000
  end

  def format_training_date!
    self.training_date = training_date.strftime('%Y-%m-%d')
  end

  def calculate_total_training_cost
    self.total_training_cost = number_of_trainees * registration_fee
  end

end
