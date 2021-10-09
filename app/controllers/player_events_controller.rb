class PlayerEventsController < ApplicationController
  before_action :set_player_event, only: %i[ show edit update destroy ]

  # GET /player_events or /player_events.json
  def index
    @player_events = PlayerEvent.all
  end

  # GET /player_events/1 or /player_events/1.json
  def show
  end

  # GET /player_events/new
  def new
    @player_event = PlayerEvent.new
  end

  # GET /player_events/1/edit
  def edit
  end

  # POST /player_events or /player_events.json
  def create
    @player_event = PlayerEvent.new(player_event_params)

    respond_to do |format|
      if @player_event.save
        format.html { redirect_to @player_event, notice: "Player event was successfully created." }
        format.json { render :show, status: :created, location: @player_event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @player_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_events/1 or /player_events/1.json
  def update
    respond_to do |format|
      if @player_event.update(player_event_params)
        format.html { redirect_to @player_event, notice: "Player event was successfully updated." }
        format.json { render :show, status: :ok, location: @player_event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @player_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_events/1 or /player_events/1.json
  def destroy
    @player_event.destroy
    respond_to do |format|
      format.html { redirect_to player_events_url, notice: "Player event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_event
      @player_event = PlayerEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_event_params
      params.require(:player_event).permit(:player_id, :event_id, :prize_id)
    end
end
