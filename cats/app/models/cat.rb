require "action_view"

class Cat < ApplicationRecord

    extend ActionView::Helpers::DateHelper

    VALID_COLORS = ["black", "white", "orange", "brown"]

    validates :cats, :birth_date, :color, :name, :sex, :description, presence: true
    validates :cats, :sex, inclusion: {in: ["M", "F"]}
    validates :cats, :color, inclusion: {in: VALID_COLORS}

    def age 
        age = Time.current - :birth_date
    end

end



    