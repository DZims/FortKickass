void loadData(){
  fileSaves = loadXML("fileSaves.xml");
  pokemonList = loadXML("pokemonList.xml").getChildren("pokemon");
  moveList = loadXML("moveList.xml").getChildren("move");
}

void printPlayers(){
  XML[] players = fileSaves.getChildren("file");
  for (int i = 0; i < players.length; i++){
    println(players[i].getChild("info").getString("name"));
  }  
}

void loadPokemon(){
  
}

void loadMoves(){
  
}