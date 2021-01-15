class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :age, numericality: {greater_than: 0, message: "No Ben B's"}
    validates :name, uniqueness: {message: "They are already here. Pick a new name!"}
    validate :not_a

    def not_a
        if name.start_with?("a", "A")

            errors.add(:name, "Cannot start with 'A'")
            byebug
        end
    end
end
