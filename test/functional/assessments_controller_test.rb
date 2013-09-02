require 'test_helper'

class AssessmentsControllerTest < ActionController::TestCase
  setup do
    @assessment = assessments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assessments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assessment" do
    assert_difference('Assessment.count') do
      post :create, assessment: { assessment_description: @assessment.assessment_description, assessment_title: @assessment.assessment_title, assessment_type: @assessment.assessment_type, assessor_email: @assessment.assessor_email, assessor_firstname: @assessment.assessor_firstname, assessor_gmc: @assessment.assessor_gmc, assessor_grade: @assessment.assessor_grade, assessor_lastname: @assessment.assessor_lastname, assessor_name: @assessment.assessor_name, date: @assessment.date }
    end

    assert_redirected_to assessment_path(assigns(:assessment))
  end

  test "should show assessment" do
    get :show, id: @assessment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assessment
    assert_response :success
  end

  test "should update assessment" do
    put :update, id: @assessment, assessment: { assessment_description: @assessment.assessment_description, assessment_title: @assessment.assessment_title, assessment_type: @assessment.assessment_type, assessor_email: @assessment.assessor_email, assessor_firstname: @assessment.assessor_firstname, assessor_gmc: @assessment.assessor_gmc, assessor_grade: @assessment.assessor_grade, assessor_lastname: @assessment.assessor_lastname, assessor_name: @assessment.assessor_name, date: @assessment.date }
    assert_redirected_to assessment_path(assigns(:assessment))
  end

  test "should destroy assessment" do
    assert_difference('Assessment.count', -1) do
      delete :destroy, id: @assessment
    end

    assert_redirected_to assessments_path
  end
end
