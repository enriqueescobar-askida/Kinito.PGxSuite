class SnpcontiglocusidAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @snpcontiglocusid_pages, @snpcontiglocusids = paginate :snpcontiglocusids, :per_page => 10
  end

  def show
    @snpcontiglocusid = Snpcontiglocusid.find(params[:id])
  end

  def new
    @snpcontiglocusid = Snpcontiglocusid.new
  end

  def create
    @snpcontiglocusid = Snpcontiglocusid.new(params[:snpcontiglocusid])
    if @snpcontiglocusid.save
      flash[:notice] = 'Snpcontiglocusid was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @snpcontiglocusid = Snpcontiglocusid.find(params[:id])
  end

  def update
    @snpcontiglocusid = Snpcontiglocusid.find(params[:id])
    if @snpcontiglocusid.update_attributes(params[:snpcontiglocusid])
      flash[:notice] = 'Snpcontiglocusid was successfully updated.'
      redirect_to :action => 'show', :id => @snpcontiglocusid
    else
      render :action => 'edit'
    end
  end

  def destroy
    Snpcontiglocusid.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
