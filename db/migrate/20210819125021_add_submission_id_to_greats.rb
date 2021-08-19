class AddSubmissionIdToGreats < ActiveRecord::Migration[5.2]
  def change
    add_reference :greats, :submission, foreign_key: true
  end
end
