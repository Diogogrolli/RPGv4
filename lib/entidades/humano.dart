import 'package:rpg_v2/entidades/raca.dart';

class Humano extends Raca {
  Humano({super.bonusVida = 10, super.bonusAtaque = 3, super.bonusEscudo = 7})
      : super(
          nome: "Humano",
        );
}
