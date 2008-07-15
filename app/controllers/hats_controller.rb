class HatsController < ApplicationController
  # GET /hats
  # GET /hats.xml
  def index
    @hats = Hat.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hats }
    end
  end

  # GET /hats/1
  # GET /hats/1.xml
  def show
    @hat = Hat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hat }
    end
  end

  # GET /hats/new
  # GET /hats/new.xml
  def new
    @hat = Hat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hat }
    end
  end

  # GET /hats/1/edit
  def edit
    @hat = Hat.find(params[:id])
  end

  # POST /hats
  # POST /hats.xml
  def create
    @hat = Hat.new(params[:hat])

    respond_to do |format|
      if @hat.save
        flash[:notice] = 'Hat was successfully created.'
        format.html { redirect_to(@hat) }
        format.xml  { render :xml => @hat, :status => :created, :location => @hat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hats/1
  # PUT /hats/1.xml
  def update
    @hat = Hat.find(params[:id])

    respond_to do |format|
      if @hat.update_attributes(params[:hat])
        flash[:notice] = 'Hat was successfully updated.'
        format.html { redirect_to(@hat) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hats/1
  # DELETE /hats/1.xml
  def destroy
    @hat = Hat.find(params[:id])
    @hat.destroy

    respond_to do |format|
      format.html { redirect_to(hats_url) }
      format.xml  { head :ok }
    end
  end
end
