class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.integer :reference_id
      t.integer :lesson_learned_id

      t.timestamps
    end
  end
end
