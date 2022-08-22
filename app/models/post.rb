class Post < ApplicationRecord
    validate :must_be_clickbaity
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "is not included in the list"}

    def must_be_clickbaity
        unless title =~ /Won't Believe/ || /Secret/ || /Guess/ ||  /(Top) [0-9]/
            errors.add(:title, "not clickbaity enough")
        end
    end
    
end
