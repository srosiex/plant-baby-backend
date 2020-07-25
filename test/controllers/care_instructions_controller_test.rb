require 'test_helper'

class CareInstructionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @care_instruction = care_instructions(:one)
  end

  test "should get index" do
    get care_instructions_url, as: :json
    assert_response :success
  end

  test "should create care_instruction" do
    assert_difference('CareInstruction.count') do
      post care_instructions_url, params: { care_instruction: { instructions: @care_instruction.instructions, plant_id: @care_instruction.plant_id, waterAmt: @care_instruction.waterAmt } }, as: :json
    end

    assert_response 201
  end

  test "should show care_instruction" do
    get care_instruction_url(@care_instruction), as: :json
    assert_response :success
  end

  test "should update care_instruction" do
    patch care_instruction_url(@care_instruction), params: { care_instruction: { instructions: @care_instruction.instructions, plant_id: @care_instruction.plant_id, waterAmt: @care_instruction.waterAmt } }, as: :json
    assert_response 200
  end

  test "should destroy care_instruction" do
    assert_difference('CareInstruction.count', -1) do
      delete care_instruction_url(@care_instruction), as: :json
    end

    assert_response 204
  end
end
