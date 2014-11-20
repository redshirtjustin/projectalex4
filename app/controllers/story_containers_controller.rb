class StoryContainersController < ApplicationController
  before_action :set_story_container, only: [:show, :edit, :update, :destroy]

  # GET /story_containers
  # GET /story_containers.json
  def index
    @story_containers = StoryContainer.all
  end

  # GET /story_containers/1
  # GET /story_containers/1.json
  def show
  end

  # GET /story_containers/new
  def new
    @story_container = StoryContainer.new
  end

  # GET /story_containers/1/edit
  def edit
  end

  # POST /story_containers
  # POST /story_containers.json
  def create
    @story_container = StoryContainer.new(story_container_params)

    respond_to do |format|
      if @story_container.save
        format.html { redirect_to @story_container, notice: 'Story container was successfully created.' }
        format.json { render :show, status: :created, location: @story_container }
      else
        format.html { render :new }
        format.json { render json: @story_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /story_containers/1
  # PATCH/PUT /story_containers/1.json
  def update
    respond_to do |format|
      if @story_container.update(story_container_params)
        format.html { redirect_to @story_container, notice: 'Story container was successfully updated.' }
        format.json { render :show, status: :ok, location: @story_container }
      else
        format.html { render :edit }
        format.json { render json: @story_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_containers/1
  # DELETE /story_containers/1.json
  def destroy
    @story_container.destroy
    respond_to do |format|
      format.html { redirect_to story_containers_url, notice: 'Story container was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_container
      @story_container = StoryContainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_container_params
      params[:story_container]
    end
end
