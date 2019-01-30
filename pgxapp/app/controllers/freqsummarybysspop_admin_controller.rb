class FreqsummarybysspopAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @freqsummarybysspop_pages, @freqsummarybysspops = paginate :freqsummarybysspops, :per_page => 10
  end

  def show
    @freqsummarybysspop = Freqsummarybysspop.find(params[:id])
  end

  def new
    @freqsummarybysspop = Freqsummarybysspop.new
  end

  def create
    @freqsummarybysspop = Freqsummarybysspop.new(params[:freqsummarybysspop])
    if @freqsummarybysspop.save
      flash[:notice] = 'Freqsummarybysspop was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @freqsummarybysspop = Freqsummarybysspop.find(params[:id])
  end

  def update
    @freqsummarybysspop = Freqsummarybysspop.find(params[:id])
    if @freqsummarybysspop.update_attributes(params[:freqsummarybysspop])
      flash[:notice] = 'Freqsummarybysspop was successfully updated.'
      redirect_to :action => 'show', :id => @freqsummarybysspop
    else
      render :action => 'edit'
    end
  end

  def destroy
    Freqsummarybysspop.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
