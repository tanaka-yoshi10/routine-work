class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.references :routine, foreign_key: true
      t.datetime :done_at
      t.string :menu
      t.string :memo

      t.timestamps
    end
  end
end
