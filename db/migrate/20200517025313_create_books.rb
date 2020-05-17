class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.boolean :availability
      t.string :author
      t.string :genre
      t.string :title
      t.integer :copies_available

      t.timestamps
    end
  end
end
