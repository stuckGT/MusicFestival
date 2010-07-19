class FineArtistsController < ApplicationController
  # GET /fine_artists
  # GET /fine_artists.xml
  def index
    @fine_artists = FineArtist.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fine_artists }
    end
  end

  # GET /fine_artists/1
  # GET /fine_artists/1.xml
  def show
    @fine_artist = FineArtist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fine_artist }
    end
  end

  # GET /fine_artists/new
  # GET /fine_artists/new.xml
  def new
    @fine_artist = FineArtist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fine_artist }
    end
  end

  # GET /fine_artists/1/edit
  def edit
    @fine_artist = FineArtist.find(params[:id])
  end

  # POST /fine_artists
  # POST /fine_artists.xml
  def create
    @fine_artist = FineArtist.new(params[:fine_artist])

    respond_to do |format|
      if @fine_artist.save
        flash[:notice] = 'FineArtist was successfully created.'
        format.html { redirect_to(@fine_artist) }
        format.xml  { render :xml => @fine_artist, :status => :created, :location => @fine_artist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fine_artist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fine_artists/1
  # PUT /fine_artists/1.xml
  def update
    @fine_artist = FineArtist.find(params[:id])

    respond_to do |format|
      if @fine_artist.update_attributes(params[:fine_artist])
        flash[:notice] = 'FineArtist was successfully updated.'
        format.html { redirect_to(@fine_artist) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fine_artist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fine_artists/1
  # DELETE /fine_artists/1.xml
  def destroy
    @fine_artist = FineArtist.find(params[:id])
    @fine_artist.destroy

    respond_to do |format|
      format.html { redirect_to(fine_artists_url) }
      format.xml  { head :ok }
    end
  end
end
