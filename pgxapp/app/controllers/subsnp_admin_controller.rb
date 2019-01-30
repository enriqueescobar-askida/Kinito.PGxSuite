class SubsnpAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @subsnp_pages, @subsnps = paginate :subsnps, :per_page => 5
  end

  def show
    @subsnp = Subsnp.find(params[:id])
  end

  def new
    @subsnp = Subsnp.new
  end

  def create
    @subsnp = Subsnp.new(params[:subsnp])
    if @subsnp.save
      flash[:notice] = 'Subsnp was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @subsnp = Subsnp.find(params[:id])
  end

  def update
    @subsnp = Subsnp.find(params[:id])
    if @subsnp.update_attributes(params[:subsnp])
      flash[:notice] = 'Subsnp was successfully updated.'
      redirect_to :action => 'show', :id => @subsnp
    else
      render :action => 'edit'
    end
  end

  def destroy
    Subsnp.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
