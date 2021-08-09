class CreateGeneralUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :general_users do |t|

      t.timestamps
    end
  end
end
