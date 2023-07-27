import 'dart:math';

Randaom randaom = Randaom();

class Randaom {
  Randaom();
  Randaom.user();
  Randaom.bot();

  int randomm() => Random().nextInt(6) + 1;
}
