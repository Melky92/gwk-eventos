class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy add_players add_player remove_player]

  # GET /events or /events.json
  def index
    @events = Event.all
    @title = "Todos los eventos"
  end
  
  def pending_events
    @events = Event.joins(:event_status).where(event_status: {name: "Pendiente"})
    @title = "Eventos Pendientes"
    render "index"
  end
  
  def finished_events
    @events = Event.joins(:event_status).where.not(event_status: {name: "Pendiente"})
    @title = "Eventos Concluidos"
    render "index"
  end

  def events_of_player
    player = Player.find(params[:player_id])
    @events = Event.joins(:player_events).where(player_events: {player_id: player.id})
    @title = "Eventos de " + player.display_name
    render "index"
  end

  # GET /events/1 or /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  def add_players
  end

  def add_player
    player_event = PlayerEvent.new
    player_event.event_id = @event.id;
    player_event.player_id = event_params[:new_player];
    if player_event.save
      redirect_to add_players_path(@event.id);
    else
      puts player_event.errors.inspect
    end
  end

  def remove_player
    player_event = @event.player_events.where(player_id: params[:player_id]).first
    puts @event.player_events.inspect
    puts player_event.inspect
    player_event && player_event.destroy
    redirect_to add_players_path(@event.id);
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path}
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to events_path}
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:name, :description, :date, :link, :reach_id, :event_status_id, :ruling_id, :game_id, :new_player, :player_id)
    end
end
