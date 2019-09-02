class AddSpineColortoBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :spine_color, :string
  end
end
