class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :text_type
      t.string :link
      t.string :title

      t.timestamps
    end
  end
end
