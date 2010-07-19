class DisplaysAtsController < ApplicationController
  # GET /displays_ats
  # GET /displays_ats.xml
  def index
    @displays_ats = DisplaysAt.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @displays_ats }
    end
  end

  # GET /displays_ats/1
  # GET /displays_ats/1.xml
  def show
    @displays_at = DisplaysAt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @displays_at }
    end
  end

  # GET /displays_ats/new
  # GET /displays_ats/new.xml
  def new
    @displays_at = DisplaysAt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @displays_at }
    end
  end

  # GET /displays_ats/1/edit
  def edit
    @displays_at = DisplaysAt.find(params[:id])
  end

  # POST /displays_ats
  # POST /displays_ats.xml
  def create
    @displays_at = DisplaysAt.new(params[:displays_at])

    respond_to do |format|
      if @displays_at.save
        flash[:notice] = 'DisplaysAt was successfully created.'
        format.html { redirect_to(@displays_at) }
        format.xml  { render :xml => @displays_at, :status => :created, :location => @displays_at }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @displays_at.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /displays_ats/1
  # PUT /displays_ats/1.xml
  def update
    @displays_at = DisplaysAt.find(params[:id])

    respond_to do |format|
      if @displays_at.update_attributes(params[:displays_at])
        flash[:notice] = 'DisplaysAt was successfully updated.'
        format.html { redirect_to(@displays_at) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @displays_at.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /displays_ats/1
  # DELETE /displays_ats/1.xml
  def destroy
    @displays_at = DisplaysAt.find(params[:id])
    @displays_at.destroy

    respond_to do |format|
      format.html { redirect_to(displays_ats_url) }
      format.xml  { head :ok }
    end
  end
end
