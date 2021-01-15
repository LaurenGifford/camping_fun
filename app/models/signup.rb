class Signup < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

    validates :time, numericality: {greater_than_or_equal_to: 0, less_than: 24, message: "does not exist!"}
    
    validate :timeless

    def timeless
        if time == 1
            errors.add(:time, "Can't be 1!!!!")
        end
    end

 
end
