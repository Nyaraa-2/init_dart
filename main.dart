import 'dart:math';
import 'arme.dart';
import 'character.dart';
import 'race.dart';

void play(Character character_play, Character character_notplay) {
  print("C'est a ${character_play.name} de jouer");
  character_play.initalStep();
  if ((character_play.maxHP * 0.30) >= character_play.currentHP!) {
    character_play.heal();
    return;
  } else if (character_play.cooldown! == 0) {
    character_notplay.takeDamage(character_play.SpecialAttack());
    return;
  } else {
    character_notplay.takeDamage(character_play.Attack());
    return;
  }
}

void main(List<String> args) {
  Hax hax = Hax("Hache de la mort");
  Baton baton = Baton("Baton de la mort");
  Orc character_one = Orc("Guerrier", 50, 100, hax);
  Elfe character_two = Elfe("mage", 50, 100, baton);

  bool whoPlay = Random().nextBool();
  bool isFinish = false;
  while (!isFinish) {
    if (whoPlay) {
      play(character_one, character_two);
    } else {
      play(character_two, character_one);
    }
    print(
        "fin dur tour :${character_one.name} a ${character_one.currentHP}.\n${character_two.name} a ${character_two.currentHP}\n--------");
    if (character_two.currentHP! <= 0 || character_one.currentHP! <= 0) {
      isFinish = true;
      print(
          "FIn de la partie, ${character_one.name} a ${character_one.currentHP}.\n${character_two.name} a ${character_two.currentHP}");
    }
    whoPlay = !whoPlay;
  }
}
