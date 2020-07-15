class Member < ApplicationRecord
    has_many :accounts
    has_many :banks, through: :accounts

    # write methods here and then put "methods: [:birth_day]" the controller 
    # def birth_day

    # end
end
