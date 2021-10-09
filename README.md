rails generate scaffold Team name:string
rails generate scaffold Player name:string nick:string team:references
rails generate scaffold Game name:string
rails generate scaffold Ruling name:string
rails generate scaffold Reach name:string
rails generate scaffold Event name:string description:string date:time reach:references
rails generate scaffold Prize name:string place:integer event:references
rails generate scaffold EventStatus name:string
rails generate migration add_eventstatus_to_event event_statuses:references
rails generate scaffold PlayerEvent player:references event:references prize:references
rails generate migration add_link_to_event link:string
rails generate migration add_ruling_to_event ruling:references
rails generate migration add_game_to_event game:references