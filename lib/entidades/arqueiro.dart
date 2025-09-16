

import 'package:rpg_v2/entidades/arquetipo.dart';
import 'package:rpg_v2/entidades/personagem.dart';

class Arqueiro extends Arquetipo {
  Arqueiro() : super(nome: 'Arqueiro');

  @override
  void atacar(Personagem atacante, Personagem defensor) {
    print('${atacante.nome} (${this.nome}) dispara uma flecha precisa em ${defensor.nome}!');

    final danoBase = (atacante.velocidade * 1.5).round();
    
    defensor.defender(danoBase);
  }
}