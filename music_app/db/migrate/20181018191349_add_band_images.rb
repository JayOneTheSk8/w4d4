class AddBandImages < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :image, :string, null: false
  end
end
