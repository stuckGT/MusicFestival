class SellsAtsController < ApplicationController
  # GET /sells_ats
  # GET /sells_ats.xml
  def index
    @sells_ats = SellsAt.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sells_ats }
    end
  end

  # GET /sells_ats/1
  # GET /sells_ats/1.xml
  def show
    @sells_at = SellsAt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sells_at }
    end
  end

  # GET /sells_ats/new
  # GET /sells_ats/new.xml
  def new
    @sells_at = SellsAt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sells_at }
    end
  end

  # GET /sells_ats/1/edit
  def edit
    @sells_at = SellsAt.find(params[:id])
  end

  # POST /sells_ats
  # POST /sells_ats.xml
  def create
    @sells_at = SellsAt.new(params[:sells_at])

    respond_to do |format|
      if @sells_at.save
        flash[:notice] = 'SellsAt was successfully created.'
        format.html { redirect_to(@sells_at) }
        format.xml  { render :xml => @sells_at, :status => :created, :location => @sells_at }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sells_at.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sells_ats/1
  # PUT /sells_ats/1.xml
  def update
    @sells_at = SellsAt.find(params[:id])

    respond_to do |format|
      if @sells_at.update_attributes(params[:sells_at])
        flash[:notice] = 'SellsAt was successfully updated.'
        format.html { redirect_to(@sells_at) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sells_at.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sells_ats/1
  # DELETE /sells_ats/1.xml
  def destroy
    @sells_at = SellsAt.find(params[:id])
    @sells_at.destroy

    respond_to do |format|
      format.html { redirect_to(sells_ats_url) }
      format.xml  { head :ok }
    end
  end
end
