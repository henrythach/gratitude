class Entry < ApplicationRecord
  validates :title, presence: true
  belongs_to :user

  def timeline_period(format = '%a, %b %d')
    created_at.strftime(format)
  end
end
