class AddSubmissionIdToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :submission_id, :integer
  end
end
