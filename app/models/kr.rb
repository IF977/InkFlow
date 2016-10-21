class Kr < ApplicationRecord
  belongs_to :okr

  def completed? 
  	!completed_at.blank?
  end
end
