class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.references :routine, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.string :exercise_name
      t.integer :reps
      t.integer :sets
      t.integer :weight

      t.timestamps
    end
  end
end
