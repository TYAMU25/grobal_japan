class AddImageToSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :submissions, :image_id, :string
  end
end
