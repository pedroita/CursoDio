import 'dart:convert';
import 'dart:io';

String lerconsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerconsoleDouble(String texto) {
  var numero = double.tryParse(lerconsole(texto));
  if (numero == null) {
    print("numero passado esta invalido alterando valores para zero");
    return 0.0;
  } else {
    return numero;
  }
}

double somar(double numero1, double numero2) {
  return numero1 + numero2;
}

double subtrair(double numero1, double numero2) {
  return numero1 - numero2;
}

double multiplicar(double numero1, double numero2) {
  return numero1 * numero2;
}

double dividir(double numero1, double numero2) {
  if (numero2 == 0) {
    print("Não existe divisão por zero");
    exit(0);
  } else {
    return numero1 / numero2;
  }
}
