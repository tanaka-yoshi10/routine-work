class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.string :name
      t.string :rrule
      t.string :checklist_url

      t.timestamps
    end
  end
end
