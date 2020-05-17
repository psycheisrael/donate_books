class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.integer :number_of_books
      t.string :author
      t.string :title
      t.text :brief_prolong

      t.timestamps
    end
  end
end
