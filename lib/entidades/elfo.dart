import 'package:rpg_v2/entidades/raca.dart';


class Elfo extends Raca {
  Elfo({super.bonusVida = 3, super.bonusAtaque = 10, super.bonusEscudo = 3})
      :super(
          nome: "Elfo",
      );
}