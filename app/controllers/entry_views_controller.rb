class EntryViewsController < TenantController
  # GET /entry_views
  # GET /entry_views.json
  def index
    @entry_views = EntryView.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entry_views }
    end
  end

  # GET /entry_views/1
  # GET /entry_views/1.json
  def show
    @entry_view = EntryView.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entry_view }
    end
  end

  # GET /entry_views/new
  # GET /entry_views/new.json
  def new
    @entry_view = EntryView.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entry_view }
    end
  end

  # GET /entry_views/1/edit
  def edit
    @entry_view = EntryView.find(params[:id])
  end

  # POST /entry_views
  # POST /entry_views.json
  def create
    @entry_view = EntryView.new(params[:entry_view])

    respond_to do |format|
      if @entry_view.save
        format.html { redirect_to @entry_view, notice: 'Entry view was successfully created.' }
        format.json { render json: @entry_view, status: :created, location: @entry_view }
      else
        format.html { render action: "new" }
        format.json { render json: @entry_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entry_views/1
  # PUT /entry_views/1.json
  def update
    @entry_view = EntryView.find(params[:id])

    respond_to do |format|
      if @entry_view.update_attributes(params[:entry_view])
        format.html { redirect_to @entry_view, notice: 'Entry view was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entry_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_views/1
  # DELETE /entry_views/1.json
  def destroy
    @entry_view = EntryView.find(params[:id])
    @entry_view.destroy

    respond_to do |format|
      format.html { redirect_to entry_views_url }
      format.json { head :no_content }
    end
  end
end
