class Athlete < ApplicationRecord
    belongs_to :gym, optional: true
    belongs_to :grade
  
    def age
      return unless birthdate
  
      today = Date.today
      age = today.year - birthdate.year
      age -= 1 if birthdate > today.yday
      age
    end
  end