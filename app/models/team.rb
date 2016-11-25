class Team < ApplicationRecord
    belongs_to :user
    has_many :okrs, dependent: :destroy
end
