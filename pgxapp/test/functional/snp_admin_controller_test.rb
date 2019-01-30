require File.dirname(__FILE__) + '/../test_helper'
require 'snp_admin_controller'

# Re-raise errors caught by the controller.
class SnpAdminController; def rescue_action(e) raise e end; end

class SnpAdminControllerTest < Test::Unit::TestCase
  fixtures :snps

  def setup
    @controller = SnpAdminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    @first_id = snps(:first).id
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

    assert_not_nil assigns(:snps)
  end

  def test_show
    get :show, :id => @first_id

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:snp)
    assert assigns(:snp).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:snp)
  end

  def test_create
    num_snps = Snp.count

    post :create, :snp => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_snps + 1, Snp.count
  end

  def test_edit
    get :edit, :id => @first_id

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:snp)
    assert assigns(:snp).valid?
  end

  def test_update
    post :update, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => @first_id
  end

  def test_destroy
    assert_nothing_raised {
      Snp.find(@first_id)
    }

    post :destroy, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Snp.find(@first_id)
    }
  end
end
