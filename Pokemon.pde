class Pokemon {
  int hp, level, exp, atk, def, speed;
  Boolean ko;
  String type;
  Move[] moves;
  PImage sprite;
  
  Pokemon(int _hp, int _level, int _exp, int _atk, int _def, int _speed, String _type, Move[] _moves, PImage _sprite){
    hp = _hp;
    level = _level;
    exp = _exp;
    atk = _atk;
    def = _def;
    speed = _speed;
    type = _type;
    moves = _moves;
    sprite = _sprite;
  }
}