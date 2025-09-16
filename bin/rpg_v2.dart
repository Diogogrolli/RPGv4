import 'package:rpg_v2/entidades/Duelo.dart';
import 'package:rpg_v2/entidades/dado.dart';
import 'package:rpg_v2/entidades/elfo.dart';
import 'package:rpg_v2/entidades/heroi.dart';
import 'package:rpg_v2/entidades/humano.dart';
import 'package:rpg_v2/entidades/monstro.dart';

void main() {
  final dado = Dado(20);
  final racaHeroi = Humano(bonusVida: 10, bonusEscudo: 3, bonusAtaque: 7);
  final megaCavaleiro = Heroi(
    nome: 'Mega Cavaleiro',
    vida: 10,
    escudo: 5,
    velocidade: 10,
    reino: 'não tem, sem teto, toco de charuto',
    missao: 'matar a peka',
    raca: racaHeroi,
  );

  final racaMonstro = Elfo(bonusVida: 3, bonusEscudo: 3, bonusAtaque: 10);
  final pekkaCaveleiro = Monstro(
    origem: 'Hell',
    tipoCriatura: 'Espirito',
    nome: 'Pekka Cavaleiro',
    vida: 10,
    escudo: 5,
    velocidade: 9,
    raca: racaMonstro,
  );
  final duelo = Duelo(
    jogador1: megaCavaleiro,
    jogador2: pekkaCaveleiro,
    dado: dado,
  );
  duelo.iniciar();
}
