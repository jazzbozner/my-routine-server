# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Deletes all data upon seeding
User.destroy_all
Routine.destroy_all
Exercise.destroy_all
Workout.destroy_all
# Users
user1 = User.create(first_name: 'Jazz', last_name: 'Bozner', email: 'jazzbozner@gmail.com', password: '123', profile_image: "img")
# Routines
r1 = Routine.create(name: 'Upper Body Day', intensity: 3, description: 'description number 1', user_id: user1.id)
r2 = Routine.create(name: 'Lower Body Day', intensity: 3, description: 'description number 2', user_id: user1.id)
r3 = Routine.create(name: 'Cardio Lifts', intensity: 5, description: 'description number 3', user_id: user1.id)
r4 = Routine.create(name: 'Back Workouts', intensity: 2, description: 'description number 4', user_id: user1.id)
# Exercises
e1 = Exercise.create(name: 'Bench Press', muscle_target: 'Pectorals', description: 'description number 1')
e2 = Exercise.create(name: 'Power Cleans', muscle_target: 'Total Body', description: 'description number 2')
e3 = Exercise.create(name: 'Squats', muscle_target: 'Quadriceps & Hamstrings', description: 'description number 3')
e4 = Exercise.create(name: 'Lunges', muscle_target: 'Quadriceps', description: 'description number 4')
e5 = Exercise.create(name: 'Incline Bench Press', muscle_target: 'Pectorals', description: 'description number 5')
e6 = Exercise.create(name: 'Dumbell Stepups', muscle_target: 'Quadriceps & Hamstrings', description: 'description number 6')
e7 = Exercise.create(name: 'Dumbell Shoulder Press', muscle_target: 'Deltoids', description: 'description number 7')
e8 = Exercise.create(name: 'Pull Ups', muscle_target: 'Lats', description: 'description number 8')
e9 = Exercise.create(name: 'Crunches', muscle_target: 'Abdominis', description: 'description number 9')
e10 = Exercise.create(name: 'Leg Raises', muscle_target: 'Iliopsoas', description: 'description number 10')
# Workouts Routine 1
Workout.create(routine_id: r1.id, exercise_id: e1.id)
Workout.create(routine_id: r1.id, exercise_id: e2.id)
Workout.create(routine_id: r1.id, exercise_id: e5.id)
Workout.create(routine_id: r1.id, exercise_id: e7.id)
Workout.create(routine_id: r1.id, exercise_id: e8.id)
Workout.create(routine_id: r1.id, exercise_id: e9.id)
# Workouts Routine 2
Workout.create(routine_id: r2.id, exercise_id: e3.id)
Workout.create(routine_id: r2.id, exercise_id: e4.id)
Workout.create(routine_id: r2.id, exercise_id: e6.id)
Workout.create(routine_id: r2.id, exercise_id: e9.id)
Workout.create(routine_id: r2.id, exercise_id: e10.id)
# Workouts Routine 3
Workout.create(routine_id: r3.id, exercise_id: e2.id)
Workout.create(routine_id: r3.id, exercise_id: e4.id)
Workout.create(routine_id: r3.id, exercise_id: e10.id)
# Workouts Routine 4
Workout.create(routine_id: r4.id, exercise_id: e1.id)
Workout.create(routine_id: r4.id, exercise_id: e2.id)
Workout.create(routine_id: r4.id, exercise_id: e3.id)
Workout.create(routine_id: r4.id, exercise_id: e4.id)
Workout.create(routine_id: r4.id, exercise_id: e5.id)
Workout.create(routine_id: r4.id, exercise_id: e6.id)
Workout.create(routine_id: r4.id, exercise_id: e7.id)
Workout.create(routine_id: r4.id, exercise_id: e8.id)
Workout.create(routine_id: r4.id, exercise_id: e9.id)
Workout.create(routine_id: r4.id, exercise_id: e10.id)
