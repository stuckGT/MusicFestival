class FestivalSponsorsController < ApplicationController
  # GET /festival_sponsors
  # GET /festival_sponsors.xml
  def index
    @festival_sponsors = FestivalSponsor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @festival_sponsors }
    end
  end

  # GET /festival_sponsors/1
  # GET /festival_sponsors/1.xml
  def show
    @festival_sponsor = FestivalSponsor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @festival_sponsor }
    end
  end

  # GET /festival_sponsors/new
  # GET /festival_sponsors/new.xml
  def new
    @festival_sponsor = FestivalSponsor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @festival_sponsor }
    end
  end

  # GET /festival_sponsors/1/edit
  def edit
    @festival_sponsor = FestivalSponsor.find(params[:id])
  end

  # POST /festival_sponsors
  # POST /festival_sponsors.xml
  def create
    @festival_sponsor = FestivalSponsor.new(params[:festival_sponsor])

    respond_to do |format|
      if @festival_sponsor.save
        flash[:notice] = 'FestivalSponsor was successfully created.'
        format.html { redirect_to(@festival_sponsor) }
        format.xml  { render :xml => @festival_sponsor, :status => :created, :location => @festival_sponsor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @festival_sponsor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /festival_sponsors/1
  # PUT /festival_sponsors/1.xml
  def update
    @festival_sponsor = FestivalSponsor.find(params[:id])

    respond_to do |format|
      if @festival_sponsor.update_attributes(params[:festival_sponsor])
        flash[:notice] = 'FestivalSponsor was successfully updated.'
        format.html { redirect_to(@festival_sponsor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @festival_sponsor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /festival_sponsors/1
  # DELETE /festival_sponsors/1.xml
  def destroy
    @festival_sponsor = FestivalSponsor.find(params[:id])
    @festival_sponsor.destroy

    respond_to do |format|
      format.html { redirect_to(festival_sponsors_url) }
      format.xml  { head :ok }
    end
  end
end
