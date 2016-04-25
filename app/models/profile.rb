class Profile < ActiveRecord::Base
    belongs_to :user

    validates :gender, inclusion: ["male", "female"]
    validate :not_both_null
    validate :not_sue_in_first_name_for_male

    def not_both_null
        if first_name.nil? && last_name.nil?
           errors.add(:last_name, "last name and first name cannot both be null!")
        end
    end

    def not_sue_in_first_name_for_male
        if gender == "male" and first_name == "Sue"
           errors.add(:first_name, "should not use first name Sue!")
        end
    end

    def self.get_all_profiles min, max
        Profile.where("birth_year between ? and ?", min, max).order(birth_year: :asc)
    end
end
