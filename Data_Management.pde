void loadSprites(){
  
}

void loadMoves(){
  moveList = loadXML("moveList.xml").getChildren("move");
}

void loadPokemon(){
  pokemonList = loadXML("pokemonList.xml").getChildren("pokemon");
  pokemons = new Pokemon[pokemonList.length];
  for(int i = 0; i < pokemonList.length; i++){
    XML info = pokemonList[i].getChild("info");
    XML stats = pokemonList[i].getChild("stats");
    XML moveset = pokemonList[i].getChild("moves");
    
    int id = info.getInt("id");
    String name = info.getString("name");
    int level = info.getInt("level");
    int exp = info.getInt("exp");
    String type = info.getString("type");
    
    int hp = stats.getInt("hp");
    int atk = stats.getInt("atk");
    int def = stats.getInt("def");
    int speed = stats.getInt("speed");
    
    Move[] myMoves = new Move[4];
    for (int j = 0; j < 4; j++){
      String str = "move"+j;
      int moveId = moveset.getInt(str);
      myMoves[j] = moves[moveId];
    }
    
    PImage mySprite = sprites[id];
    
    Pokemon pkmn = new Pokemon(id, name, level, exp, type, hp, atk, def, speed, myMoves, mySprite);
    pokemons[i] = pkmn;
  }
}

void loadSaves(){
  fileSaves = loadXML("fileSaves.xml");
}

void printPlayers(){
  XML[] players = fileSaves.getChildren("file");
  for (int i = 0; i < players.length; i++){
    println(players[i].getChild("info").getString("name"));
  }  
}