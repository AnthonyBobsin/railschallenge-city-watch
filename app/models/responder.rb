class Responder < ActiveRecord::Base


    self.inheritance_column = nil

    validates :type, presence: true
    validates :name, presence: true, uniqueness: true
    validates :capacity, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
