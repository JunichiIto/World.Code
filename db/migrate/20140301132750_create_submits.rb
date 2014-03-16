class CreateSubmits < ActiveRecord::Migration
  def change
    create_table :submits do |t|
      t.text :description
      t.string :language
      t.text :source

      t.timestamps
    end
  end
end
