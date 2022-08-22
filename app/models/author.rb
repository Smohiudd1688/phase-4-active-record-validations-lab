class Author < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: {case_sensitve: true}
    validates :phone_number, length: {is: 10}
end
