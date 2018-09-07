class CreateAdvertisements < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :author
      t.string :email
      t.string :phone
      t.text :content
      t.float :price
      t.timestamps
    end
  end
end
