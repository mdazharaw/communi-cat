class Sector < ApplicationRecord
    has_many :cat
    has_many :user
end
