class Api::V1::WorkoutsController < ApplicationController
    def index
        workouts = Workout.all
        render json: workouts
    end

    def show
        workout = workout.find(params[:id])
        render json: workout
    end

    def new
        workout = workout.new
    end

    def create
        workout = workout.create(workout_params)
        if rountine.valid?
            render json: workout
        else
            render json: {message: workout.errors.full_message}
        end
    end

    def edit
        rountine = workout.find(params[:id])
    end

    def update
        workout = workout.find(params[:id])
        if workout.valid?
            workout.update(workout_params)
        else
            render json: {message: workout.errors.full_message}
        end
    end

    def destroy
        workout = Rountine.find(params[:id])
        workout.destroy
        render json: {message: 'Workout has been deleted'}
    end

    private

    def workout
        params.require(:routine).permit(:routine_id, :exercise_id)
    end
end
