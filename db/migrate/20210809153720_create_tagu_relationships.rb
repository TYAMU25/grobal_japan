class CreateTaguRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :tagu_relationships do |t|
      t.timestamps
    end
  end
end
