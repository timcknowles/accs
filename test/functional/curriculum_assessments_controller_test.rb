require 'test_helper'

class CurriculumAssessmentsControllerTest < ActionController::TestCase
  setup do
    @curriculum_assessment = curriculum_assessments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:curriculum_assessments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curriculum_assessment" do
    assert_difference('CurriculumAssessment.count') do
      post :create, curriculum_assessment: {  }
    end

    assert_redirected_to curriculum_assessment_path(assigns(:curriculum_assessment))
  end

  test "should show curriculum_assessment" do
    get :show, id: @curriculum_assessment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curriculum_assessment
    assert_response :success
  end

  test "should update curriculum_assessment" do
    put :update, id: @curriculum_assessment, curriculum_assessment: {  }
    assert_redirected_to curriculum_assessment_path(assigns(:curriculum_assessment))
  end

  test "should destroy curriculum_assessment" do
    assert_difference('CurriculumAssessment.count', -1) do
      delete :destroy, id: @curriculum_assessment
    end

    assert_redirected_to curriculum_assessments_path
  end
end
