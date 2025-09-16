

import 'package:rpg_v2/entidades/personagem.dart';

abstract class Arquetipo {
  
  final String nome;

  Arquetipo({required this.nome});

  void atacar(Personagem atacante, Personagem defensor);

  
}