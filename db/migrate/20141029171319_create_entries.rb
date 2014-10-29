class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :tag
      t.text :content
      t.references :category, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
