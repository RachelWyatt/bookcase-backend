class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :cover_img_url
      t.integer :page_count
      t.integer :bookcase_id
      t.timestamps
    end
  end
end
