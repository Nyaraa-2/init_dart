import 'dart:math';
import 'arme.dart';
import 'characterConfig.dart';

class Character implements CharacterConfig {
  final String name;
  final int maxHP;
  int? currentHP;
  final int maxMP;
  int? currentMP;
  int? cooldown;
  Arme arme;

  Character(this.name, this.maxHP, this.maxMP, this.arme) {
    currentHP = maxHP;
    currentMP = maxMP;
    cooldown = 0;
  }

  int Attack() {
    print("$name attaque");
    int damage = this.arme.degats + Random().nextInt(10) + 1;
    return damage;
  }

  int SpecialAttack() {
    print("$name utilise sa compétence spécial");
    cooldown = 5;
    return Attack() + Attack();
  }

  void initalStep() {
    getMana();
    setCooldown();
  }

  void heal() {
    print("$name est en train de se soigner");
    try {
      int result = (currentHP! + maxHP ~/ 2);
      if (result < maxHP) {
        currentHP = result;
        print("$name a soigné $result, il possède $currentHP");
      } else {
        print("$name a récupéré toute sa vie");
        currentHP = maxHP;
      }
    } catch (e) {
      print(e);
    }
  }

  void getMana() {
    if (currentMP != maxMP) {
      print("$name a récupéré 2 points de mana");
      currentMP = currentMP! + 2;
    }
  }

  void setCooldown() {
    if (cooldown != 0) {
      cooldown = cooldown! - 1;
    }
  }

  void takeDamage(int dmg) {
    currentHP = currentHP! - dmg;
    print("$name a pris $dmg de dégat");
  }
}
