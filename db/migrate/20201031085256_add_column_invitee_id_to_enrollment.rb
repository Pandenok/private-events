class AddColumnInviteeIdToEnrollment < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :invitee_id, :integer
  end
end
