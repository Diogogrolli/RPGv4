

import 'package:rpg_v2/entidades/arquetipo.dart';
import 'package:rpg_v2/entidades/personagem.dart';

class Guerreiro extends Arquetipo {
  Guerreiro()
      : super(
          bonusVida: 5,
          bonusEscudo: 3,
          bonusAtaque: 2,
        );

  @override
  void atacar(Personagem atacante, Personagem defensor) {
    print('${atacante.nome} ataca ${defensor.nome} com sua espada!');
    final danoBase = (atacante.vida * 0.5 + atacante.velocidade * 0.2).round();
    defensor.defender(danoBase + bonusAtaque);
  }
}
