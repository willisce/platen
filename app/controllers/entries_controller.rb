class EntriesController < TenantController
  include PlatenSerializer
  # GET /entries
  # GET /entries.json
  def index
    @entry_type = EntryType.find(params[:entry_type_id])
    build_model_from_code(@entry_type)
    @entries = @entry_type.entries

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
    end
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
    @entry_type = EntryType.find(params[:entry_type_id])
    build_model_from_code(@entry_type)
    @entry = Entry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entry }
    end
  end

  # GET /entries/new
  # GET /entries/new.json
  def new
    @entry_type = EntryType.find(params[:entry_type_id])
    @entry = Entry.new
    @entry.entry_type = @entry_type
    @entry.data = build_model_from_code(@entry_type)

    respond_to do |format|
      format.html { render :inline => build_form_template(@entry_type),
        :type =>  'haml', :layout => true }# new.html.erb
      format.json { render json: @entry }
    end
  end

  # GET /entries/1/edit
  def edit
    @entry_type = EntryType.find(params[:entry_type_id])
    # reconstitiute the Class of the entry data
    build_model_from_code(@entry_type)
    @entry = Entry.find(params[:id])

    templ = build_form_template(@entry_type)
    templ << "\|\n"
    templ << "= link_to 'Show', [@entry_type, @entry]"

    render :inline => templ, :type => 'haml', :layout => true    
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry_type = EntryType.find(params[:entry_type_id])
    @entry = Entry.new
    @entry.data = build_model_from_code(@entry_type)
    model_name = get_model_name(@entry)
    
    @entry.data.attributes = params[:entry][model_name]
    @entry.entry_type = @entry_type
    @entry.section_id = params[:entry][:section_id]


    respond_to do |format|
      if @entry.save
        format.html { redirect_to [@entry_type, @entry], notice: 'Entry was successfully created.' }
        format.json { render json: @entry, status: :created, location: @entry }
      else
        format.html { render action: "new" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entries/1
  # PUT /entries/1.json
  def update
    @entry_type = EntryType.find(params[:entry_type_id])
    build_model_from_code(@entry_type)
    @entry = Entry.find(params[:id])
    model_name = get_model_name(@entry)

    @entry.data.attributes = params[:entry][model_name]
    @entry.section_id = params[:entry][:section_id]

    respond_to do |format|
      if @entry.save
        format.html { redirect_to [@entry_type, @entry], notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry_type = EntryType.find(params[:entry_type_id])
    @entry = Entry.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to entry_type_entries_url(@entry_type) }
      format.json { head :no_content }
    end
  end
end
