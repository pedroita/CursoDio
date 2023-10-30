import 'dart:io';

import 'package:calculadora/funções/utils.dart' as utils;

void main(List<String> arguments) {
  var valor1 = utils.lerconsoleDouble("infome o primeiro valor: ");

  var valor2 = utils.lerconsoleDouble("Informe o segundo valor: ");

  var operacao =
      utils.lerconsole("Informe a operação que queira fazer(+,-,*,/): ");
  calcular(operacao, valor1, valor2);
}

void calcular(String operacao, double numero1, double numero2) {
  double resultado = 0;
  switch (operacao) {
    case "+":
      resultado = utils.somar(numero1, numero2);
      break;
    case "-":
      resultado = utils.subtrair(numero1, numero2);
      break;
    case "*":
      resultado = utils.multiplicar(numero1, numero2);
      break;
    case "/":
      resultado = utils.dividir(numero1, numero2);
      break;
    default:
      print("Operação invalida");
      exit(0);
  }
  print("Valor para operação escolhida: $operacao");
  print("o valor é :$resultado");
}
