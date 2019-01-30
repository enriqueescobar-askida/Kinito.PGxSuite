require File.dirname(__FILE__) + '/../test_helper'
require 'subpopallele_admin_controller'

# Re-raise errors caught by the controller.
class SubpopalleleAdminController; def rescue_action(e) raise e end; end

class SubpopalleleAdminControllerTest < Test::Unit::TestCase
  fixtures :subpopalleles

  def setup
    @controller = SubpopalleleAdminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    @first_id = subpopalleles(:first).id
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

    assert_not_nil assigns(:subpopalleles)
  end

  def test_show
    get :show, :id => @first_id

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:subpopallele)
    assert assigns(:subpopallele).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:subpopallele)
  end

  def test_create
    num_subpopalleles = Subpopallele.count

    post :create, :subpopallele => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_subpopalleles + 1, Subpopallele.count
  end

  def test_edit
    get :edit, :id => @first_id

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:subpopallele)
    assert assigns(:subpopallele).valid?
  end

  def test_update
    post :update, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => @first_id
  end

  def test_destroy
    assert_nothing_raised {
      Subpopallele.find(@first_id)
    }

    post :destroy, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Subpopallele.find(@first_id)
    }
  end
end
