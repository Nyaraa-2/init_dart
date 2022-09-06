import 'dart:math';

import 'arme.dart';
import 'character.dart';

class Race extends Character {
  Race(super.name, super.maxHP, super.maxMP, super.arme);
}

class Orc extends Race implements Character {
  Orc(super.name, super.maxHP, super.maxMP, super.arme) {
    if (this.arme.runtimeType is! Hax) {
      super.arme = Hax("Hache de la mort");
    }
  }

  int life() {
    return super.maxHP + 10;
  }

  @override
  void getMana() {
    super.getMana();
  }

  @override
  void heal() {
    super.heal();
  }

  @override
  void initalStep() {
    super.initalStep();
  }

  @override
  int get maxHP => life();

  @override
  int get maxMP => super.maxMP;

  @override
  void setCooldown() {
    super.setCooldown();
  }

  @override
  void takeDamage(int dmg) {
    super.takeDamage(dmg);
  }

  @override
  int? cooldown;

  @override
  int? currentHP;

  @override
  int? currentMP;

  @override
  int Attack() {
    return super.Attack();
  }

  @override
  int SpecialAttack() {
    return super.SpecialAttack();
  }

  @override
  Arme get arme => super.arme;
}

class Elfe extends Race implements Character {
  Elfe(super.name, super.maxHP, super.maxMP, super.arme) {
    if (this.arme.runtimeType is! Baton) {
      super.arme = Baton("Baton de la mort");
    }
  }

  double healMeMore() {
    return Random().nextInt(10) + 1;
  }

  @override
  void getMana() {
    super.getMana();
  }

  @override
  void heal() {
    super.heal();
    this.currentHP = this.currentHP! + 10;
  }

  @override
  void initalStep() {
    super.initalStep();
  }

  @override
  int get maxHP => super.maxHP;

  @override
  int get maxMP => super.maxMP;

  @override
  void setCooldown() {
    super.setCooldown();
  }

  @override
  void takeDamage(int dmg) {
    super.takeDamage(dmg);
  }

  @override
  int? cooldown;

  @override
  int? currentHP;

  @override
  int? currentMP;

  @override
  int Attack() {
    return super.Attack();
  }

  @override
  int SpecialAttack() {
    return super.SpecialAttack();
  }

  @override
  Arme get arme => super.arme;
}
