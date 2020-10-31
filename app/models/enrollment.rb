class Enrollment < ApplicationRecord
  belongs_to :event
  belongs_to :user, class_name: "User", optional: true
  belongs_to :invitee, class_name: "User"
end
