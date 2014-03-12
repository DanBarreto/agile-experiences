class CreateLessonLearneds < ActiveRecord::Migration
  def change
    create_table :lesson_learneds do |t|
      t.string :content

      t.timestamps
    end
  end
end
