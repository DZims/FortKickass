Boolean startScreen, pauseMenu, battleMenu, overworld, introSequence;
PFont myFont;
XML fileSaves;
XML[] pokemonList, moveList;
String[] players;
PImage[] sprites;

void setup(){
  size(1300,700);
  background(0,0,0);
  myFont = createFont("Pokemon GB.ttf",50);
  textFont(myFont,20);
  loadData();
  printPlayers();
}

void loop(){ 
  
}