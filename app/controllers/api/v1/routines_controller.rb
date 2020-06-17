class Api::V1::RoutinesController < ApplicationController
    def index
        @routines = Routine.all
        render json: @routines
    end

    def show
        @routine = Routine.find(params[:id])
        render json: @routine
    end

    def create
        @routine = Routine.create(name: params['name'], intensity: params['intensity'], user_id: params['user_id'], description: params['description'])
            routine_params['exercises_attributes'].each do |exercise| 
                Workout.create(routine_id: @routine.id, exercise_id: exercise[:id], exercise_name: exercise[:name], reps: 0, sets: 0, weight: 0) 
            end
        if @routine.save
            render json: @routine
        else
            render json: {message: @routine.errors.full_message}
        end
    end

    def update
        @routine = Routine.find(params[:id])
        if @routine.valid?
            @routine.update(routine_params)
            render json: @routine
        else
            render json: {message: @routine.errors.full_message}
        end
    end

    def destroy
        @routine = Routine.find(params[:id])
        @routine.destroy
        render json: {message: 'Routine has been deleted'}
    end

    private

    def routine_params
        params.require(:routine).permit(:id, :name, :intensity, :description, :user_id, exercises_attributes: [:id, :name, :muscle_target, :description])
    end
end
