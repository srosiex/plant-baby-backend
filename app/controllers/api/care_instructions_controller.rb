class CareInstructionsController < ApplicationController
  before_action :set_care_instruction, only: [:show, :update, :destroy]

  # GET /care_instructions
  def index
    @care_instructions = CareInstruction.all

    render json: @care_instructions
  end

  # GET /care_instructions/1
  def show
    render json: @care_instruction
  end

  # POST /care_instructions
  def create
    @care_instruction = CareInstruction.new(care_instruction_params)

    if @care_instruction.save
      render json: @care_instruction, status: :created, location: @care_instruction
    else
      render json: @care_instruction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /care_instructions/1
  def update
    if @care_instruction.update(care_instruction_params)
      render json: @care_instruction
    else
      render json: @care_instruction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /care_instructions/1
  def destroy
    @care_instruction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_care_instruction
      @care_instruction = CareInstruction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def care_instruction_params
      params.require(:care_instruction).permit(:waterAmt, :instructions, :plant_id)
    end
end
