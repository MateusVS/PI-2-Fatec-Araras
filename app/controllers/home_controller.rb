class HomeController < ApplicationController
  def index
    @bim_calculation_history = BimCalculationHistory.new
  end
end
