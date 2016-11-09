class Okr < ApplicationRecord
  belongs_to :team
  has_many :krs, dependent: :destroy
end
