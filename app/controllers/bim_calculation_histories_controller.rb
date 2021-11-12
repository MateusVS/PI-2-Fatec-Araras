class BimCalculationHistoriesController < ApplicationController
  def index
    @BimCalculationHistories = BimCalculationHistory.all
  end

  def create
    @BimCalculationHistoriy = BimCalculationHistories.new(bim_calculation_history_params)
    #dar merge do user_id BimCalculationHistories com current_user
    respond_to do |format|
      if @BimCalculationHistoriy.save
        format.json { render :show, status: :created, location: @user }
      else
        format.json { render json: @BimCalculationHistoriy.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  private

  def bim_calculation_history_params
    params.require(:bim_calculation_history).permit(:height, :width)
  end
end
