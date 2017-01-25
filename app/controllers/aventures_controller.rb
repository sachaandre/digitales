class AventuresController < ApplicationController
  before_action :set_aventure, only: [:show, :edit, :update, :destroy]

  # GET /aventures
  # GET /aventures.json
  def index
      @aventures = Aventure.all
  end

  # GET /aventures/1
  # GET /aventures/1.json
  def show
  end

  # GET /aventures/new
  def new
    @aventure = Aventure.new
  end

  # GET /aventures/1/edit
  def edit
  end

  # POST /aventures
  # POST /aventures.json
  def create
    @aventure = Aventure.new(aventure_params)

    respond_to do |format|
      if @aventure.save
        format.html { redirect_to @aventure, notice: 'Aventure was successfully created.' }
        format.json { render :show, status: :created, location: @aventure }
      else
        format.html { render :new }
        format.json { render json: @aventure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aventures/1
  # PATCH/PUT /aventures/1.json
  def update
    respond_to do |format|
      if @aventure.update(aventure_params)
        format.html { redirect_to @aventure, notice: 'Aventure was successfully updated.' }
        format.json { render :show, status: :ok, location: @aventure }
      else
        format.html { render :edit }
        format.json { render json: @aventure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aventures/1
  # DELETE /aventures/1.json
  def destroy
    @aventure.destroy
    respond_to do |format|
      format.html { redirect_to aventures_url, notice: 'Aventure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_aventure
    @aventure = Aventure.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def aventure_params
    params.require(:aventure).permit(:title, :aventure_text, :aventure_video, :aventure_audio, :aventure_portrait, :aventure_illu, :first_name, :last_name, :age, variable_ids: [],tag_ids: [])
  end
end
