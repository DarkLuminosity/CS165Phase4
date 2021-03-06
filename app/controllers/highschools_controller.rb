class HighschoolsController < ApplicationController
  before_action :set_highschool, only: [:show, :edit, :update, :destroy]

  # GET /highschools
  # GET /highschools.json
  def index
    @highschools = Highschool.all
  end

  # GET /highschools/1
  # GET /highschools/1.json
  def show
  end

  # GET /highschools/new
  def new
    @highschool = Highschool.new
  end

  # GET /highschools/1/edit
  def edit
  end

  # POST /highschools
  # POST /highschools.json
  def create
    @highschool = Highschool.new(highschool_params)

    respond_to do |format|
      if @highschool.save
        format.html { redirect_to @highschool, notice: 'Highschool was successfully created.' }
        format.json { render :show, status: :created, location: @highschool }
      else
        format.html { render :new }
        format.json { render json: @highschool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /highschools/1
  # PATCH/PUT /highschools/1.json
  def update
    respond_to do |format|
      if @highschool.update(highschool_params)
        format.html { redirect_to @highschool, notice: 'Highschool was successfully updated.' }
        format.json { render :show, status: :ok, location: @highschool }
      else
        format.html { render :edit }
        format.json { render json: @highschool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /highschools/1
  # DELETE /highschools/1.json
  def destroy
    @highschool.destroy
    respond_to do |format|
      format.html { redirect_to highschools_url, notice: 'Highschool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_highschool
      @highschool = Highschool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def highschool_params
      params.require(:highschool).permit(:name, :address)
    end
end
