class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :kind
      t.boolean :featured
      t.integer :added_by_id

      t.timestamps
    end
    add_index :items, :added_by_id
  end
end
