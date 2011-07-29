class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.xml
  before_filter :logged_in_as_admin,:only=>[:new,:edit,:create,:update]
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @project = Project.find(params[:id])
    if is_admin?
      @bids = @project.bids.order("bid_amount DESC")
    else
      @bids =  current_team.bids.where(:project_id =>params[:id]).order("bid_amount DESC")
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.xml
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.xml
  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to(@project, :notice => 'Project was successfully created.') }
        format.xml  { render :xml => @project, :status => :created, :location => @project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to(@project, :notice => 'Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to(projects_url) }
      format.xml  { head :ok }
    end
  end

  def add_bid
    @project = Project.find(params[:id])
    if params["bid_amount"].to_f != 0.0
      @bid = current_team.bids.new(:project_id=>@project.id,:bid_amount=>params["bid_amount"].to_f)
      if BidValidator.is_valid_bid?(@bid)
        if @bid.save
          message ="Bid is created"
        end
      else
        message =BidValidator.bid_message(@bid)
      end
    else
      message = "Please ensure bid amount is not blank and it contains number"
    end

    redirect_to project_path(@project),:notice=>message
  end

  def complete_bid
    @project = Project.find(params[:id])
    @project.add_winner
    redirect_to projects_path
  end
end
