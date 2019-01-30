class PopulationAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @population_pages, @populations = paginate :populations, :per_page => 10
  end

  def show
    @population = Population.find(params[:id])
  end

  def new
    @population = Population.new
  end

  def create
    @population = Population.new(params[:population])
    if @population.save
      flash[:notice] = 'Population was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @population = Population.find(params[:id])
  end

  def update
    @population = Population.find(params[:id])
    if @population.update_attributes(params[:population])
      flash[:notice] = 'Population was successfully updated.'
      redirect_to :action => 'show', :id => @population
    else
      render :action => 'edit'
    end
  end

  def destroy
    Population.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
