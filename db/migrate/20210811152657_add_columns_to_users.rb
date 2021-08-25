class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :general_users, :name, :string
    add_column :general_users, :gender, :string
    add_column :general_users, :birthdate, :string
    add_column :general_users, :self_introduction, :string
    add_column :general_users, :now, :datetime

    add_column :general_users, :exit_flag, :integer

    add_column :commints, :general_user_id, :integer
    add_column :commints, :submissions_recruiting_id, :integer
    add_column :commints, :comment, :string

    add_column :greats, :general_user_id, :integer
    add_column :greats, :submissions_recruiting_id, :integer

    add_column :tagu_relationships, :submission_id, :integer
    add_column :tagu_relationships, :tagu_id, :integer

    add_column :tagus, :name, :string
  end
end
