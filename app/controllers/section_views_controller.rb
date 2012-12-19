class SectionViewsController < TenantController
  # GET /section_views
  # GET /section_views.json
  def index
    @section_views = SectionView.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_views }
    end
  end

  # GET /section_views/1
  # GET /section_views/1.json
  def show
    @section_view = SectionView.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_view }
    end
  end

  # GET /section_views/new
  # GET /section_views/new.json
  def new
    @section_view = SectionView.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_view }
    end
  end

  # GET /section_views/1/edit
  def edit
    @section_view = SectionView.find(params[:id])
  end

  # POST /section_views
  # POST /section_views.json
  def create
    @section_view = SectionView.new(params[:section_view])

    respond_to do |format|
      if @section_view.save
        format.html { redirect_to @section_view, notice: 'Section view was successfully created.' }
        format.json { render json: @section_view, status: :created, location: @section_view }
      else
        format.html { render action: "new" }
        format.json { render json: @section_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_views/1
  # PUT /section_views/1.json
  def update
    @section_view = SectionView.find(params[:id])

    respond_to do |format|
      if @section_view.update_attributes(params[:section_view])
        format.html { redirect_to @section_view, notice: 'Section view was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_views/1
  # DELETE /section_views/1.json
  def destroy
    @section_view = SectionView.find(params[:id])
    @section_view.destroy

    respond_to do |format|
      format.html { redirect_to section_views_url }
      format.json { head :no_content }
    end
  end
end
