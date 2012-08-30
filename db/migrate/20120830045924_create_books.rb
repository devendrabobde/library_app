class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :edition
      t.float :price
      t.string :avalability

      t.timestamps
    end
  end
end
