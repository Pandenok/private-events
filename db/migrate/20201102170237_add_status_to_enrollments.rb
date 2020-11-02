class AddStatusToEnrollments < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :status, :integer
  end
end
