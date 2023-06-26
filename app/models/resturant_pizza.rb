class ResturantPizza < ApplicationRecord

    belongs_to :pizza
    belongs_to :resturant

    validates :price, presence: true, numericality: {greater_than_or_equal_to:1, less_than_or_equal_to:30 }
    
end
