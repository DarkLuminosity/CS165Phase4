class TestcentersController < ApplicationController
  before_action :set_testcenter, only: [:show, :edit, :update, :destroy]

  # GET /testcenters
  # GET /testcenters.json
  def index
    @testcenters = Testcenter.all
  end

  # GET /testcenters/1
  # GET /testcenters/1.json
  def show
  end

  # GET /testcenters/new
  def new
    @testcenter = Testcenter.new
  end

  # GET /testcenters/1/edit
  def edit
  end

  # POST /testcenters
  # POST /testcenters.json
  def create
    @testcenter = Testcenter.new(testcenter_params)

    respond_to do |format|
      if @testcenter.save
        format.html { redirect_to @testcenter, notice: 'Testcenter was successfully created.' }
        format.json { render :show, status: :created, location: @testcenter }
      else
        format.html { render :new }
        format.json { render json: @testcenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testcenters/1
  # PATCH/PUT /testcenters/1.json
  def update
    respond_to do |format|
      if @testcenter.update(testcenter_params)
        format.html { redirect_to @testcenter, notice: 'Testcenter was successfully updated.' }
        format.json { render :show, status: :ok, location: @testcenter }
      else
        format.html { render :edit }
        format.json { render json: @testcenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testcenters/1
  # DELETE /testcenters/1.json
  def destroy
    @testcenter.destroy
    respond_to do |format|
      format.html { redirect_to testcenters_url, notice: 'Testcenter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testcenter
      @testcenter = Testcenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testcenter_params
      params.require(:testcenter).permit(:name)
    end
end
