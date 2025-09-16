

import 'package:rpg_v2/entidades/arquetipo.dart';
import 'package:rpg_v2/entidades/personagem.dart';

class Guerreiro extends Arquetipo {
  
  Guerreiro() : super(nome: 'Guerreiro');

  @override
  void atacar(Personagem atacante, Personagem defensor) {
    print('${atacante.nome} (${this.nome}) ataca ${defensor.nome} com sua espada!');
    

    final danoBase = (atacante.vida * 0.5 + atacante.velocidade * 0.2).round();
    
    defensor.defender(danoBase);
  }
}