class EntryTypesController < TenantController
  include PlatenSerializer
  # GET /entry_types
  # GET /entry_types.json
  def index
    @entry_types = EntryType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entry_types }
    end
  end

  # GET /entry_types/1
  # GET /entry_types/1.json
  def show
    @entry_type = EntryType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entry_type }
    end
  end

  # GET /entry_types/new
  # GET /entry_types/new.json
  def new
    @entry_type = EntryType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entry_type }
    end
  end

  # GET /entry_types/1/edit
  def edit
    @entry_type = EntryType.find(params[:id])
  end

  # POST /entry_types
  # POST /entry_types.json
  def create
    field_type_ids = params[:entry_type].delete("field_type_ids")
    @entry_type = EntryType.new(params[:entry_type])
    @entry_type.field_type_ids = field_type_ids
    @entry_type.form_code = build_form_code(@entry_type.field_types)
    @entry_type.model_code = build_model_code(@entry_type.name, @entry_type.field_types)
    @entry_type.model = build_model_from_code(@entry_type)

    respond_to do |format|
      if @entry_type.save
        format.html { redirect_to @entry_type, notice: 'Entry type was successfully created.' }
        format.json { render json: @entry_type, status: :created, location: @entry_type }
      else
        format.html { render action: "new" }
        format.json { render json: @entry_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entry_types/1
  # PUT /entry_types/1.json
  def update
    @entry_type = EntryType.find(params[:id])

    respond_to do |format|
      field_type_ids = params[:entry_type].delete("field_type_ids")
      @entry_type.field_type_ids = field_type_ids if field_type_ids
      params[:entry_type].delete("form_code")
      if @entry_type.update_attributes(params[:entry_type])
        format.html { redirect_to @entry_type, notice: 'Entry type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entry_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_types/1
  # DELETE /entry_types/1.json
  def destroy
    @entry_type = EntryType.find(params[:id])
    @entry_type.destroy

    respond_to do |format|
      format.html { redirect_to entry_types_url }
      format.json { head :no_content }
    end
  end

end
