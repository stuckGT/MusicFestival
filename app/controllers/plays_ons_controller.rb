class PlaysOnsController < ApplicationController
  # GET /plays_ons
  # GET /plays_ons.xml
  def index
    @plays_ons = PlaysOn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plays_ons }
    end
  end

  # GET /plays_ons/1
  # GET /plays_ons/1.xml
  def show
    @plays_on = PlaysOn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @plays_on }
    end
  end

  # GET /plays_ons/new
  # GET /plays_ons/new.xml
  def new
    @plays_on = PlaysOn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @plays_on }
    end
  end

  # GET /plays_ons/1/edit
  def edit
    @plays_on = PlaysOn.find(params[:id])
  end

  # POST /plays_ons
  # POST /plays_ons.xml
  def create
    @plays_on = PlaysOn.new(params[:plays_on])

    respond_to do |format|
      if @plays_on.save
        flash[:notice] = 'PlaysOn was successfully created.'
        format.html { redirect_to(@plays_on) }
        format.xml  { render :xml => @plays_on, :status => :created, :location => @plays_on }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @plays_on.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /plays_ons/1
  # PUT /plays_ons/1.xml
  def update
    @plays_on = PlaysOn.find(params[:id])

    respond_to do |format|
      if @plays_on.update_attributes(params[:plays_on])
        flash[:notice] = 'PlaysOn was successfully updated.'
        format.html { redirect_to(@plays_on) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @plays_on.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /plays_ons/1
  # DELETE /plays_ons/1.xml
  def destroy
    @plays_on = PlaysOn.find(params[:id])
    @plays_on.destroy

    respond_to do |format|
      format.html { redirect_to(plays_ons_url) }
      format.xml  { head :ok }
    end
  end
end
