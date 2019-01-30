require File.dirname(__FILE__) + '/../test_helper'
require 'snpcontiglocusid_admin_controller'

# Re-raise errors caught by the controller.
class SnpcontiglocusidAdminController; def rescue_action(e) raise e end; end

class SnpcontiglocusidAdminControllerTest < Test::Unit::TestCase
  fixtures :snpcontiglocusids

  def setup
    @controller = SnpcontiglocusidAdminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    @first_id = snpcontiglocusids(:first).id
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

    assert_not_nil assigns(:snpcontiglocusids)
  end

  def test_show
    get :show, :id => @first_id

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:snpcontiglocusid)
    assert assigns(:snpcontiglocusid).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:snpcontiglocusid)
  end

  def test_create
    num_snpcontiglocusids = Snpcontiglocusid.count

    post :create, :snpcontiglocusid => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_snpcontiglocusids + 1, Snpcontiglocusid.count
  end

  def test_edit
    get :edit, :id => @first_id

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:snpcontiglocusid)
    assert assigns(:snpcontiglocusid).valid?
  end

  def test_update
    post :update, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => @first_id
  end

  def test_destroy
    assert_nothing_raised {
      Snpcontiglocusid.find(@first_id)
    }

    post :destroy, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Snpcontiglocusid.find(@first_id)
    }
  end
end
