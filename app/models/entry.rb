class Entry < ApplicationRecord
  validates :title, presence: true
  belongs_to :user

  def self.all_for_user(user)
    where(user: user)
  end
end
