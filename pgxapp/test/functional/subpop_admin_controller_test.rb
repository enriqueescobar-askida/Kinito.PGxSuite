require File.dirname(__FILE__) + '/../test_helper'
require 'subpop_admin_controller'

# Re-raise errors caught by the controller.
class SubpopAdminController; def rescue_action(e) raise e end; end

class SubpopAdminControllerTest < Test::Unit::TestCase
  fixtures :subpops

  def setup
    @controller = SubpopAdminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    @first_id = subpops(:first).id
  end

  def test_index
    get :index
    assert_response :success
    assert_template 'list'
  end

  def test_list
    get :list

    assert_response :success
    assert_template 'list'

    assert_not_nil assigns(:subpops)
  end

  def test_show
    get :show, :id => @first_id

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:subpop)
    assert assigns(:subpop).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:subpop)
  end

  def test_create
    num_subpops = Subpop.count

    post :create, :subpop => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_subpops + 1, Subpop.count
  end

  def test_edit
    get :edit, :id => @first_id

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:subpop)
    assert assigns(:subpop).valid?
  end

  def test_update
    post :update, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => @first_id
  end

  def test_destroy
    assert_nothing_raised {
      Subpop.find(@first_id)
    }

    post :destroy, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Subpop.find(@first_id)
    }
  end
end
