import 'package:rpg_v2/entidades/arquetipo.dart';
import 'package:rpg_v2/entidades/personagem.dart';

class Arqueiro extends Arquetipo {
  Arqueiro()
      : super(
          bonusVida: 0,
          bonusEscudo: 1,
          bonusAtaque: 2,
        );

  void atacar(Personagem atacante, Personagem defensor) {
    print('${atacante.nome} dispara uma flecha precisa em ${defensor.nome}!');

    final danoBase = (atacante.velocidade * 1.5).round();
    defensor.defender(danoBase + bonusAtaque);
  }
}
