import 'package:rpg_v2/entidades/raca.dart';

abstract class Personagem {
  final String _nome;
  int _vida;
  final int _escudo;
  final int _velocidade;
  final Raca _raca;

  Personagem({
    required String nome,
    required int vida,
    required int escudo,
    required int velocidade,
    required Raca raca, // TIRAR DUVIDA COM O PROFESSOR
  }) : _nome = nome,
       _vida = vida + raca.bonusVida,
       _escudo = escudo + raca.bonusEscudo,
       _velocidade = velocidade,
       _raca = raca;

  String get nome => _nome;
  int get vida => _vida;
  int get escudo => _escudo;
  int get velocidade => _velocidade;
  Raca get raca => _raca;

  void defender(int dano) {
    var danoReal = dano - _escudo;
    if (danoReal > 0) {
      _vida -= danoReal;
    }
    if (_vida < 0) {
      _vida = 0;
    }
  }

  bool estaVivo() {
    return _vida > 0;
  }

  void atacar(Personagem oponente, int dano) {
    print('Nome do atacante $_nome');
    print('Nome oponente ${oponente._nome}');
    oponente.defender(dano + _raca.bonusAtaque);
  }

  void exibirStatus() {
    print('Nome: $_nome - Vida: $_vida ');
  }
}
