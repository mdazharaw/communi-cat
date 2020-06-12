class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :alias, array: true, default: []
      t.datetime :last_fed
      t.references :sector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
