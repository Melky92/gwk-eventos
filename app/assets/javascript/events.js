$(document).ready(function() {
  $("#add_player_event").click(function(){
    let player_selector = $("#player_list");
    let player_row = $("<tr>");
    
    let player = $("#player_list option:selected").text();
    if(!player) return;
    $("#player_list option:selected").remove();

    let player_option = $('<option>', {
      text: player
    })

    let list_container = $("<td>");
    list_container.append(player);

    let delete_button = $("<button>", {type: "button"});
    delete_button.html("Eliminar");
    delete_button.click(function() {
      player_row.remove();
      player_selector.append(player_option);
    });

    let delete_container = $("<td>");
    delete_container.append(delete_button);

    player_row.append(list_container);
    player_row.append(delete_container);

    $("#event_players tbody").append(player_row);
  });
});