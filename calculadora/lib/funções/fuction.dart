import 'dart:convert';
import 'dart:io';
import 'package:calculadora/funções/utils.dart' as utils;

void main(List<String> args) {
  var line = utils.lerconsole("Digite um numero para sair ou 'S' para sair!");
  double contador = 0;
  while (line != "S") {
    var numero = double.parse(line);
    contador = contador + numero;
    line = utils.lerconsole("Digite um numero ou 'S'");
  }
  print(contador);
}
