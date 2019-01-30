class SubpopAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @subpop_pages, @subpops = paginate :subpops, :per_page => 10
  end

  def show
    @subpop = Subpop.find(params[:id])
  end

  def new
    @subpop = Subpop.new
  end

  def create
    @subpop = Subpop.new(params[:subpop])
    if @subpop.save
      flash[:notice] = 'Subpop was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @subpop = Subpop.find(params[:id])
  end

  def update
    @subpop = Subpop.find(params[:id])
    if @subpop.update_attributes(params[:subpop])
      flash[:notice] = 'Subpop was successfully updated.'
      redirect_to :action => 'show', :id => @subpop
    else
      render :action => 'edit'
    end
  end

  def destroy
    Subpop.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
