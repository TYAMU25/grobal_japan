class CreateGreats < ActiveRecord::Migration[5.2]
  def change
    create_table :greats do |t|

      t.timestamps
    end
  end
end
