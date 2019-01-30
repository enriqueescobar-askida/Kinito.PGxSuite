class SnpAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @snp_pages, @snps = paginate :snps, :per_page => 10
  end

  def show
    @snp = Snp.find(params[:id])
  end

  def new
    @snp = Snp.new
  end

  def create
    @snp = Snp.new(params[:snp])
    if @snp.save
      flash[:notice] = 'Snp was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @snp = Snp.find(params[:id])
  end

  def update
    @snp = Snp.find(params[:id])
    if @snp.update_attributes(params[:snp])
      flash[:notice] = 'Snp was successfully updated.'
      redirect_to :action => 'show', :id => @snp
    else
      render :action => 'edit'
    end
  end

  def destroy
    Snp.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
