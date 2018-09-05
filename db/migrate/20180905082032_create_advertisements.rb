class CreateAdvertisements < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :author
      t.text :content
      t.float :price
      t.timestamps
    end
  end
end
