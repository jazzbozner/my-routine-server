class Api::V1::RoutinesController < ApplicationController
    def index
        routines = Routine.all
        render json: routines
    end

    def show
        routine = Routine.find(params[:id])
        render json: routine
    end

    def new
        routine = Routine.new
    end

    def create
        routine = Routine.create(routine_params)
        if rountine.valid?
            render json: routine
        else
            render json: {message: routine.errors.full_message}
        end
    end

    def edit
        rountine = Routine.find(params[:id])
    end

    def update
        routine = Routine.find(params[:id])
        if routine.valid?
            routine.update(routine_params)
        else
            render json: {message: routine.errors.full_message}
        end
    end

    def destroy
        routine = Rountine.find(params[:id])
        routine.destroy
        render json: {message: 'Routine has been deleted'}
    end

    private

    def routine_params
        params.require(:routine).permit(:name, :intensity, :description, :user_id)
    end
end
