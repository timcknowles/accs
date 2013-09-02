require 'test_helper'

class DopsControllerTest < ActionController::TestCase
  setup do
    @dop = dops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dop" do
    assert_difference('Dop.count') do
      post :create, dop: { analalgesia: @dop.analalgesia, aseptic: @dop.aseptic, assesser_GMC: @dop.assesser_GMC, assessor: @dop.assessor, assessor_contact: @dop.assessor_contact, assessor_email: @dop.assessor_email, assessor_postion: @dop.assessor_postion, clinical_encouter: @dop.clinical_encouter, clinical_setting: @dop.clinical_setting, communication: @dop.communication, complexity: @dop.complexity, consent: @dop.consent, consideration: @dop.consideration, number_previous_assessor: @dop.number_previous_assessor, number_previous_trainee: @dop.number_previous_trainee, overall: @dop.overall, post_procedure: @dop.post_procedure, preparation: @dop.preparation, problem_category: @dop.problem_category, seeks_help: @dop.seeks_help, suggestions: @dop.suggestions, technical_ability: @dop.technical_ability, time_feedback: @dop.time_feedback, time_observation: @dop.time_observation, training: @dop.training, understanding: @dop.understanding }
    end

    assert_redirected_to dop_path(assigns(:dop))
  end

  test "should show dop" do
    get :show, id: @dop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dop
    assert_response :success
  end

  test "should update dop" do
    put :update, id: @dop, dop: { analalgesia: @dop.analalgesia, aseptic: @dop.aseptic, assesser_GMC: @dop.assesser_GMC, assessor: @dop.assessor, assessor_contact: @dop.assessor_contact, assessor_email: @dop.assessor_email, assessor_postion: @dop.assessor_postion, clinical_encouter: @dop.clinical_encouter, clinical_setting: @dop.clinical_setting, communication: @dop.communication, complexity: @dop.complexity, consent: @dop.consent, consideration: @dop.consideration, number_previous_assessor: @dop.number_previous_assessor, number_previous_trainee: @dop.number_previous_trainee, overall: @dop.overall, post_procedure: @dop.post_procedure, preparation: @dop.preparation, problem_category: @dop.problem_category, seeks_help: @dop.seeks_help, suggestions: @dop.suggestions, technical_ability: @dop.technical_ability, time_feedback: @dop.time_feedback, time_observation: @dop.time_observation, training: @dop.training, understanding: @dop.understanding }
    assert_redirected_to dop_path(assigns(:dop))
  end

  test "should destroy dop" do
    assert_difference('Dop.count', -1) do
      delete :destroy, id: @dop
    end

    assert_redirected_to dops_path
  end
end
