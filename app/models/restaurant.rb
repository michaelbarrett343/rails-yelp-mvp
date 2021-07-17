class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates_inclusion_of :category, :in => ["chinese", "italian", "japanese", "french", "belgian"]
    validates :name, :address, :category, presence: true
    
end
