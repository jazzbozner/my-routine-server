class Api::V1::ExercisesController < ApplicationController
    def index
        exercises = Exercise.all
        render json: exercises
    end

    def show
        exercise = Exercise.find(params[:id])
        render json: exercise
    end

    def new
        exercise = Exercise.new
    end

    def create
        exercise = Exercise.create(exercise_params)
        if exercise.valid?
            render json: exercise
        else
            render json: {message: exercise.errors.full_messages}
        end
    end

    def edit
        exercise = Exercise.find(params[:id])
    end

    def update
        exercise = Exercise.find(params[:id])
        if exercise.valid?
            exercise.update(exercise_params)
        else
            render json: {message: exercise.errors.full_messages}
        end
    end

    def destroy
        exercise = Exercise.find(params[:id])
        exercise.delete
        render json: {message: 'Exercise has been deleted'}
    end

    private

    def exercise_params
        params.require(:exercise).permit(:name, :muscle_target, :description)
    end
end
