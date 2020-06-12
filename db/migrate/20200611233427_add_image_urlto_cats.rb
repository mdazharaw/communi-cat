class AddImageUrltoCats < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :imageUrl, :string
  end
end
