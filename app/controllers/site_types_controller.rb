class SiteTypesController < TenantController
  # GET /site_types
  # GET /site_types.json
  def index
    @site_types = SiteType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @site_types }
    end
  end

  # GET /site_types/1
  # GET /site_types/1.json
  def show
    @site_type = SiteType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @site_type }
    end
  end

  # GET /site_types/new
  # GET /site_types/new.json
  def new
    @site_type = SiteType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @site_type }
    end
  end

  # GET /site_types/1/edit
  def edit
    @site_type = SiteType.find(params[:id])
  end

  # POST /site_types
  # POST /site_types.json
  def create
    @site_type = SiteType.new(params[:site_type])

    respond_to do |format|
      if @site_type.save
        format.html { redirect_to @site_type, notice: 'Site type was successfully created.' }
        format.json { render json: @site_type, status: :created, location: @site_type }
      else
        format.html { render action: "new" }
        format.json { render json: @site_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /site_types/1
  # PUT /site_types/1.json
  def update
    @site_type = SiteType.find(params[:id])

    respond_to do |format|
      if @site_type.update_attributes(params[:site_type])
        format.html { redirect_to @site_type, notice: 'Site type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_types/1
  # DELETE /site_types/1.json
  def destroy
    @site_type = SiteType.find(params[:id])
    @site_type.destroy

    respond_to do |format|
      format.html { redirect_to site_types_url }
      format.json { head :no_content }
    end
  end
end
