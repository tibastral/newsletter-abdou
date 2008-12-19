class ActusController < ApplicationController
  before_filter :get_newsletter
  before_filter :get_member, :only => [:show, :edit, :update, :destroy]
  before_filter :get_collection, :only => :index

  # GET /actus
  # GET /actus.xml
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @actus }
    end
  end

  # GET /actus/1
  # GET /actus/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @actu }
    end
  end

  # GET /actus/new
  # GET /actus/new.xml
  def new
    @actu = Actu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @actu }
    end
  end

  # GET /actus/1/edit
  def edit
  end

  # POST /actus
  # POST /actus.xml
  def create
    @actu = Actu.new(params[:actu])
    respond_to do |format|
      if @actu.save
        @newsletter.actus << @actu
        flash[:notice] = 'Actu was successfully created.'
        format.html { redirect_to(newsletter_actu_path(@newsletter, @actu)) }
        format.xml  { render :xml => @actu, :status => :created, :location => @actu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @actu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /actus/1
  # PUT /actus/1.xml
  def update
    respond_to do |format|
      if @actu.update_attributes(params[:actu])
        flash[:notice] = 'Actu was successfully updated.'
        format.html { redirect_to(newsletter_actu_path(@newsletter, @actu)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @actu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /actus/1
  # DELETE /actus/1.xml
  def destroy
    @actu.destroy

    respond_to do |format|
      format.html { redirect_to(newsletter_actus_url(@newsletter)) }
      format.xml  { head :ok }
    end
  end
  
  private

  def get_newsletter
    @newsletter = Newsletter.find(params[:newsletter_id])
  end

  def get_collection
    @actus = Actu.find_all_by_newsletter_id(params[:newsletter_id])
  end

  def get_member
    @actu = Actu.find(params[:id])
  end
end
