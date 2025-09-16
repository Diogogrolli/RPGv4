

import 'package:rpg_v2/entidades/arquetipo.dart';
import 'package:rpg_v2/entidades/personagem.dart';

class Mago extends Arquetipo {
  Mago() : super(nome: 'Mago');

  @override
  void atacar(Personagem atacante, Personagem defensor) {
    print('${atacante.nome} (${this.nome}) lança uma bola de fogo em ${defensor.nome}!');

    final danoBase = (atacante.velocidade * 1.2).round();
    
    final escudoReduzido = (defensor.escudo * 0.5).round();
    final danoFinal = danoBase - escudoReduzido;

    if (danoFinal > 0) {
      defensor.vida -= danoFinal;
    }
    
    print('${defensor.nome} sofreu ${danoFinal > 0 ? danoFinal : 0} de dano mágico!');
  }
}