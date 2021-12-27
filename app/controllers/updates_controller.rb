class UpdatesController < ApplicationController
  def index
      updates = Update.all
      render json: {status: 200, updates: updates}
      end
  def show
      render json: Update.find(params[:id])
  end
  def create
      update = Update.new(update_params)
      if update.save
          render json: {status:201, update:update}
      else 
          render json: {status:422, update:update, errors:update.errors}
      end
  end
      def update
          update = Update.find(params[:id])
          update.update(update_params)
          render json: {status: 200, update:update}
      end
      def destroy
          Update.destroy(params[:id])
          render json: {status:204}
      end
      private
      def update_params
          params.require(:update).permit(:actions, :self_evaluation, :completed, :goal_id)
      end
end