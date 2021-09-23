class ChangeDatatypeSubmissionsTargetOfSubmissions < ActiveRecord::Migration[5.2]
  def change
    change_column :submissions, :submissions_target, :string
  end
end
