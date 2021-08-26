class AddColumnsToCommints < ActiveRecord::Migration[5.2]
  def change
    add_column :commints, :submission_id, :integer
  end
end
