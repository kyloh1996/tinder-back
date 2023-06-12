class PracticesController < ApplicationController
    def index
        Practices = Practice.all
        render json: Practices
        end
    
        def create
        practice = Practice.create(practice_params)
        if practice.valid?
          render json: practice, status: :created
        else
          render json: practice.errors, status: 422
        end
        end
    
      def update
        practice = Practice.find(params[:id])
            if practice.update(practice_params)
          render json: practice
        else
            render json: practice.errors, status: 422
        end
        end
    
      def destroy
        practice = Practice.find(params[:id])
        practice.destroy
        head :no_content
      end
    
      private
      def practice_params
        params.require(:practice).permit(:name, :age, :gender, :image, :description)
      endend
