class Pokemon {
  int id, hp, level, exp, atk, def, speed;
  Boolean ko;
  String name, type;
  Move[] moves;
  PImage sprite;
  
  Pokemon(int _id, String _name, int _level, int _exp, String _type, int _hp, int _atk, int _def, int _speed, Move[] _moves, PImage _sprite){
    id = _id;
    name = _name;
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