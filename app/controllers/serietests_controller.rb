class SerietestsController < ApplicationController
  before_action :set_serietest, only: %i[ show edit update destroy ]

  # GET /serietests or /serietests.json
  def index
    @serietests = Serietest.all
  end

  # GET /serietests/1 or /serietests/1.json
  def show
  end

  # GET /serietests/new
  def new
    @serietest = Serietest.new
  end

  # GET /serietests/1/edit
  def edit
  end

  # POST /serietests or /serietests.json
  def create
    @serietest = Serietest.new(serietest_params)

    respond_to do |format|
      if @serietest.save
        format.html { redirect_to @serietest, notice: "Serietest was successfully created." }
        format.json { render :show, status: :created, location: @serietest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @serietest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serietests/1 or /serietests/1.json
  def update
    respond_to do |format|
      if @serietest.update(serietest_params)
        format.html { redirect_to @serietest, notice: "Serietest was successfully updated." }
        format.json { render :show, status: :ok, location: @serietest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @serietest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serietests/1 or /serietests/1.json
  def destroy
    @serietest.destroy
    respond_to do |format|
      format.html { redirect_to serietests_url, notice: "Serietest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serietest
      @serietest = Serietest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def serietest_params
      params.require(:serietest).permit(:name, :description)
    end
end
