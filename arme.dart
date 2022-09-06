class Arme {
  final String nom;
  final int degats = 2;

  Arme(this.nom);
}

class Hax extends Arme {
  Hax(super.nom);
  @override
  int get degats => tornade();

  int tornade() {
    return super.degats * 2;
  }
}

class Baton extends Arme {
  Baton(super.nom);
  @override
  int get degats => fireBall();

  int fireBall() {
    return super.degats * 3;
  }
}
