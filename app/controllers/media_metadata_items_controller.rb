class MediaMetadataItemsController < ApplicationController
  # GET /media_metadata_items
  # GET /media_metadata_items.xml
  def index
    @media_metadata_items = MediaMetadataItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media_metadata_items }
    end
  end

  # GET /media_metadata_items/1
  # GET /media_metadata_items/1.xml
  def show
    @media_metadata_item = MediaMetadataItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @media_metadata_item }
    end
  end

  # GET /media_metadata_items/new
  # GET /media_metadata_items/new.xml
  def new
    @media_metadata_item = MediaMetadataItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @media_metadata_item }
    end
  end

  # GET /media_metadata_items/1/edit
  def edit
    @media_metadata_item = MediaMetadataItem.find(params[:id])
  end

  # POST /media_metadata_items
  # POST /media_metadata_items.xml
  def create
    @media_metadata_item = MediaMetadataItem.new(params[:media_metadata_item])

    respond_to do |format|
      if @media_metadata_item.save
        flash[:notice] = 'MediaMetadataItem was successfully created.'
        format.html { redirect_to(@media_metadata_item) }
        format.xml  { render :xml => @media_metadata_item, :status => :created, :location => @media_metadata_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @media_metadata_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media_metadata_items/1
  # PUT /media_metadata_items/1.xml
  def update
    @media_metadata_item = MediaMetadataItem.find(params[:id])

    respond_to do |format|
      if @media_metadata_item.update_attributes(params[:media_metadata_item])
        flash[:notice] = 'MediaMetadataItem was successfully updated.'
        format.html { redirect_to(@media_metadata_item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @media_metadata_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media_metadata_items/1
  # DELETE /media_metadata_items/1.xml
  def destroy
    @media_metadata_item = MediaMetadataItems.find(params[:id])
    @media_metadata_item.destroy

    respond_to do |format|
      format.html { redirect_to(media_metadata_items_url) }
      format.xml  { head :ok }
    end
  end
end
