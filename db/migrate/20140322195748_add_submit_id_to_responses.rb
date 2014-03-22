class AddSubmitIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :submit_id, :integer
    add_index :responses, :submit_id
  end
end
