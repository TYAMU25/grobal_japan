class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.integer :general_user_id, null: false
      t.string :title, null: false
      t.text :text, null: false
      t.string :name, null: false
      t.string :gender, null: false
      t.integer :submissions_target, null: false
      t.timestamps
    end
  end
end
