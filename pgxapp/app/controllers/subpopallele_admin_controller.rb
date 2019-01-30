class SubpopalleleAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @subpopallele_pages, @subpopalleles = paginate :subpopalleles, :per_page => 10
  end

  def show
    @subpopallele = Subpopallele.find(params[:id])
  end

  def new
    @subpopallele = Subpopallele.new
  end

  def create
    @subpopallele = Subpopallele.new(params[:subpopallele])
    if @subpopallele.save
      flash[:notice] = 'Subpopallele was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @subpopallele = Subpopallele.find(params[:id])
  end

  def update
    @subpopallele = Subpopallele.find(params[:id])
    if @subpopallele.update_attributes(params[:subpopallele])
      flash[:notice] = 'Subpopallele was successfully updated.'
      redirect_to :action => 'show', :id => @subpopallele
    else
      render :action => 'edit'
    end
  end

  def destroy
    Subpopallele.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
