# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "action_view"

class Cat < ApplicationRecord

    extend ActionView::Helpers::DateHelper

    VALID_COLORS = ["black", "white", "orange", "brown"]

    validates :birth_date, :color, :name, :sex, :description, presence: true
    validates :sex, inclusion: {in: ["M", "F"]}
    validates :color, inclusion: {in: VALID_COLORS}

    # def age 
    #     age = Time.current - :birth_date
    # end

end



    
