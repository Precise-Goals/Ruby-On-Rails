class User < ApplicationRecord
    GENDER = {
        Male:1,
        Female:2,
    }
   
    enum :gender, GENDER

    validates :gender, inclusion: {
        in:["Male","Female"],
        message: "Wrong Gender Specified"
    }

    # scope :male, -> {where(gender :male)}
    # scope :female, -> {where(gender :female)}
end
