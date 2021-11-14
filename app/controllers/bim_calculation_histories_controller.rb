class BimCalculationHistoriesController < ApplicationController
  def index
    @bim_calculation_histories = BimCalculationHistory.all
  end

  def show
    @bim_calculation_history = BimCalculationHistory.find(params[:id])
  end

  def create
    @bim_calculation_history = BimCalculationHistory.new(bim_calculation_history_params)
    @bim_calculation_history.user_id = current_user.id

    respond_to do |format|
      if @bim_calculation_history.save
        format.js { render 'home/create' }
        format.json { render :show, status: :created }
      else
        format.json { render json: @bim_calculation_history.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bim_calculation_history = BimCalculationHistory.find(params[:id])
    @bim_calculation_history.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "Histórico apagado com sucesso!"  }
      format.json { head :no_content }
    end
  end

  private

  def bim_calculation_history_params
    params.require(:bim_calculation_history).permit(:height, :width)
  end
end
