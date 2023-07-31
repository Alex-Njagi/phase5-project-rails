#This model is used by the Farming Group Administrators to sign up for training
class FarmerTraining < ApplicationRecord
  #Establishes the many to one relationship this model has with the User model
    belongs_to :user

  #Ensures the below methods are run before a record is saved
    before_save :fill_user_name, :set_registration_fee, :format_training_date!, :calculate_total_training_cost

  #This method is used to look up the matching user name using the user id
    def fill_user_name
      self.user_name = user.user_name
    end

  #This method is used to set up a default registration fee value
    def set_registration_fee
      self.registration_fee = 7000
    end

  #This method is used to set the format for the training_date column
    def format_training_date!
      self.training_date = training_date.strftime('%Y-%m-%d')
    end

  #This method is used to calculate the total cost of signing up for training
    def calculate_total_training_cost
      self.total_training_cost = number_of_trainees * registration_fee
    end

end
