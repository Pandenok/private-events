class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :enrollments
  has_many :attendees, through: :enrollments, source: :user
  has_many :invitees, through: :enrollments, source: :invitee
  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
end
