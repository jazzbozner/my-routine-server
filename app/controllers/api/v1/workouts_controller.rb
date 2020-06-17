class Api::V1::WorkoutsController < ApplicationController
    def index
        @workouts = Workout.all
        render json: @workouts
    end

    def show
        @workout = Workout.find(params[:id])
        render json: @workout
    end

    def create
        @workout = Workout.create(workout_params)
        if @workout.valid?
            render json: @workout
        else
            render json: {message: @workout.errors.full_message}
        end
    end

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
        render json: @workout
    end

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
        render json: {message: 'Workout has been deleted'}
    end

    private

    def workout_params
        params.require(:workout).permit(:id, :routine_id, :exercise_id, :reps, :sets, :weight)
    end
end
