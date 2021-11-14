class SpecialistsController < ApplicationController
  before_action :set_specialist, only: %i[ show edit update destroy ]

  def index
    @specialists = Specialist.all
  end

  def show
  end

  def new
    @specialist = Specialist.new
  end

  def edit
  end

  def create
    @specialist = Specialist.new(specialist_params)

    respond_to do |format|
      if @specialist.save
        format.html { redirect_to @specialist, notice: "Specialist was successfully created." }
        format.json { render :show, status: :created, location: @specialist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @specialist.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @specialist.update(specialist_params)
        format.html { redirect_to @specialist, notice: "Specialist was successfully updated." }
        format.json { render :show, status: :ok, location: @specialist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @specialist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @specialist.destroy
    respond_to do |format|
      format.html { redirect_to specialists_url, notice: "Specialist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_specialist
      @specialist = Specialist.find(params[:id])
    end

    def specialist_params
      params.require(:specialist).permit(:name, :description, :phone)
    end
end
