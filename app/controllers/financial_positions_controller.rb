class FinancialPositionsController < ApplicationController
  # GET /financial_positions
  # GET /financial_positions.xml
  def index
    @financial_positions = FinancialPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @financial_positions }
    end
  end

  # GET /financial_positions/1
  # GET /financial_positions/1.xml
  def show
    @financial_position = FinancialPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @financial_position }
    end
  end

  # GET /financial_positions/new
  # GET /financial_positions/new.xml
  def new
    @financial_position = FinancialPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @financial_position }
    end
  end

  # GET /financial_positions/1/edit
  def edit
    @financial_position = FinancialPosition.find(params[:id])
  end

  # POST /financial_positions
  # POST /financial_positions.xml
  def create
    @financial_position = FinancialPosition.new(params[:financial_position])

    respond_to do |format|
      if @financial_position.save
        format.html { redirect_to(@financial_position, :notice => 'Financial position was successfully created.') }
        format.xml  { render :xml => @financial_position, :status => :created, :location => @financial_position }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @financial_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /financial_positions/1
  # PUT /financial_positions/1.xml
  def update
    @financial_position = FinancialPosition.find(params[:id])

    respond_to do |format|
      if @financial_position.update_attributes(params[:financial_position])
        format.html { redirect_to(@financial_position, :notice => 'Financial position was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @financial_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_positions/1
  # DELETE /financial_positions/1.xml
  def destroy
    @financial_position = FinancialPosition.find(params[:id])
    @financial_position.destroy

    respond_to do |format|
      format.html { redirect_to(financial_positions_url) }
      format.xml  { head :ok }
    end
  end
end
