class MediaItemsController < ApplicationController
  # GET /media_items
  # GET /media_items.xml
  def index
    @media_items = MediaItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media_items }
    end
  end

  # GET /media_items/1
  # GET /media_items/1.xml
  def show
    @media_item = MediaItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @media_item }
    end
  end

  # GET /media_items/new
  # GET /media_items/new.xml
  def new
    @media_item = MediaItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @media_item }
    end
  end

  # GET /media_items/1/edit
  def edit
    @media_item = MediaItem.find(params[:id])
  end

  # POST /media_items
  # POST /media_items.xml
  def create
    @media_item = MediaItem.new(params[:media_item])

    respond_to do |format|
      if @media_item.save
        flash[:notice] = 'MediaItem was successfully created.'
        format.html { redirect_to(@media_item) }
        format.xml  { render :xml => @media_item, :status => :created, :location => @media_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @media_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media_items/1
  # PUT /media_items/1.xml
  def update
    @media_item = MediaItem.find(params[:id])

    respond_to do |format|
      if @media_item.update_attributes(params[:media_item])
        flash[:notice] = 'MediaItem was successfully updated.'
        format.html { redirect_to(@media_item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @media_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media_items/1
  # DELETE /media_items/1.xml
  def destroy
    @media_item = MediaItem.find(params[:id])
    @media_item.destroy

    respond_to do |format|
      format.html { redirect_to(media_items_url) }
      format.xml  { head :ok }
    end
  end
end
