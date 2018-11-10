class CreateSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :selections do |t|
      t.string :title
      t.references :routine, foreign_key: true

      t.timestamps
    end
  end
end
