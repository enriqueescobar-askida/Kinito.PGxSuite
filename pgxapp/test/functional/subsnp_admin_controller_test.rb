require File.dirname(__FILE__) + '/../test_helper'
require 'subsnp_admin_controller'

# Re-raise errors caught by the controller.
class SubsnpAdminController; def rescue_action(e) raise e end; end

class SubsnpAdminControllerTest < Test::Unit::TestCase
  fixtures :subsnps

  def setup
    @controller = SubsnpAdminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    @first_id = subsnps(:first).id
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

    assert_not_nil assigns(:subsnps)
  end

  def test_show
    get :show, :id => @first_id

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:subsnp)
    assert assigns(:subsnp).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:subsnp)
  end

  def test_create
    num_subsnps = Subsnp.count

    post :create, :subsnp => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_subsnps + 1, Subsnp.count
  end

  def test_edit
    get :edit, :id => @first_id

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:subsnp)
    assert assigns(:subsnp).valid?
  end

  def test_update
    post :update, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => @first_id
  end

  def test_destroy
    assert_nothing_raised {
      Subsnp.find(@first_id)
    }

    post :destroy, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Subsnp.find(@first_id)
    }
  end
end
