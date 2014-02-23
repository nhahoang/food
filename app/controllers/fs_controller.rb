class FsController < ApplicationController
  # GET /fs
  # GET /fs.json
  def index
    @fs = F.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fs }
    end
  end

  # GET /fs/1
  # GET /fs/1.json
  def show
    @f = F.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @f }
    end
  end

  # GET /fs/new
  # GET /fs/new.json
  def new
    @f = F.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @f }
    end
  end

  # GET /fs/1/edit
  def edit
    @f = F.find(params[:id])
  end

  # POST /fs
  # POST /fs.json
  def create
    @f = F.new(params[:f])

    respond_to do |format|
      if @f.save
        format.html { redirect_to @f, notice: 'F was successfully created.' }
        format.json { render json: @f, status: :created, location: @f }
      else
        format.html { render action: "new" }
        format.json { render json: @f.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fs/1
  # PUT /fs/1.json
  def update
    @f = F.find(params[:id])

    respond_to do |format|
      if @f.update_attributes(params[:f])
        format.html { redirect_to @f, notice: 'F was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @f.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fs/1
  # DELETE /fs/1.json
  def destroy
    @f = F.find(params[:id])
    @f.destroy

    respond_to do |format|
      format.html { redirect_to fs_url }
      format.json { head :no_content }
    end
  end
end
