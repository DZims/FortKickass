Boolean startScreen, pauseMenu, battleMenu, overworld, introSequence;
PFont myFont;
XML fileSaves;
XML[] pokemonList, moveList;
Pokemon[] pokemons;
Move[] moves;
String[] players;
PImage[] sprites, animeSprites;

void setup(){
  size(1300,700);
  background(0,0,0);
  myFont = createFont("Pokemon GB.ttf",50);
  textFont(myFont,20);
  loadSprites();
  loadMoves();
  loadPokemon();
  loadSaves();
  printPlayers();
}

void loop(){ 
  
}