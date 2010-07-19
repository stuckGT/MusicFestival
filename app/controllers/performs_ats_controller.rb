class PerformsAtsController < ApplicationController
  # GET /performs_ats
  # GET /performs_ats.xml
  def index
    @performs_ats = PerformsAt.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @performs_ats }
    end
  end

  # GET /performs_ats/1
  # GET /performs_ats/1.xml
  def show
    @performs_at = PerformsAt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @performs_at }
    end
  end

  # GET /performs_ats/new
  # GET /performs_ats/new.xml
  def new
    @performs_at = PerformsAt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @performs_at }
    end
  end

  # GET /performs_ats/1/edit
  def edit
    @performs_at = PerformsAt.find(params[:id])
  end

  # POST /performs_ats
  # POST /performs_ats.xml
  def create
    @performs_at = PerformsAt.new(params[:performs_at])

    respond_to do |format|
      if @performs_at.save
        flash[:notice] = 'PerformsAt was successfully created.'
        format.html { redirect_to(@performs_at) }
        format.xml  { render :xml => @performs_at, :status => :created, :location => @performs_at }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @performs_at.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /performs_ats/1
  # PUT /performs_ats/1.xml
  def update
    @performs_at = PerformsAt.find(params[:id])

    respond_to do |format|
      if @performs_at.update_attributes(params[:performs_at])
        flash[:notice] = 'PerformsAt was successfully updated.'
        format.html { redirect_to(@performs_at) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @performs_at.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /performs_ats/1
  # DELETE /performs_ats/1.xml
  def destroy
    @performs_at = PerformsAt.find(params[:id])
    @performs_at.destroy

    respond_to do |format|
      format.html { redirect_to(performs_ats_url) }
      format.xml  { head :ok }
    end
  end
end
