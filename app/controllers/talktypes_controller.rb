class TalktypesController < ApplicationController
  # GET /talktypes
  # GET /talktypes.json
  def index
    @talktypes = Talktype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @talktypes }
    end
  end

  # GET /talktypes/1
  # GET /talktypes/1.json
  def show
    @talktype = Talktype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @talktype }
    end
  end

  # GET /talktypes/new
  # GET /talktypes/new.json
  def new
    @talktype = Talktype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @talktype }
    end
  end

  # GET /talktypes/1/edit
  def edit
    @talktype = Talktype.find(params[:id])
  end

  # POST /talktypes
  # POST /talktypes.json
  def create
    @talktype = Talktype.new(params[:talktype])

    respond_to do |format|
      if @talktype.save
        format.html { redirect_to @talktype, notice: 'Talktype was successfully created.' }
        format.json { render json: @talktype, status: :created, location: @talktype }
      else
        format.html { render action: "new" }
        format.json { render json: @talktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /talktypes/1
  # PUT /talktypes/1.json
  def update
    @talktype = Talktype.find(params[:id])

    respond_to do |format|
      if @talktype.update_attributes(params[:talktype])
        format.html { redirect_to @talktype, notice: 'Talktype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @talktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talktypes/1
  # DELETE /talktypes/1.json
  def destroy
    @talktype = Talktype.find(params[:id])
    @talktype.destroy

    respond_to do |format|
      format.html { redirect_to talktypes_url }
      format.json { head :no_content }
    end
  end
end
