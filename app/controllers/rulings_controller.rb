class RulingsController < ApplicationController
  before_action :set_ruling, only: %i[ show edit update destroy ]

  # GET /rulings or /rulings.json
  def index
    @rulings = Ruling.all
  end

  # GET /rulings/1 or /rulings/1.json
  def show
  end

  # GET /rulings/new
  def new
    @ruling = Ruling.new
  end

  # GET /rulings/1/edit
  def edit
  end

  # POST /rulings or /rulings.json
  def create
    @ruling = Ruling.new(ruling_params)

    respond_to do |format|
      if @ruling.save
        format.html { redirect_to @ruling, notice: "Ruling was successfully created." }
        format.json { render :show, status: :created, location: @ruling }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ruling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rulings/1 or /rulings/1.json
  def update
    respond_to do |format|
      if @ruling.update(ruling_params)
        format.html { redirect_to @ruling, notice: "Ruling was successfully updated." }
        format.json { render :show, status: :ok, location: @ruling }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ruling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rulings/1 or /rulings/1.json
  def destroy
    @ruling.destroy
    respond_to do |format|
      format.html { redirect_to rulings_url, notice: "Ruling was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruling
      @ruling = Ruling.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ruling_params
      params.require(:ruling).permit(:name)
    end
end
