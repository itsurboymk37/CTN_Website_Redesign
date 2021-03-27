class Signature < ApplicationRecord
    validates :name, presence: true
    validates :city_state, presence: true
    validates :country, presence: true
end
