import 'dart:convert';
import 'dart:io';

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));
  if (numero == null) {
    print("o valor passado é nulo e vai ser atribuido zero como padrão");
    return 0.0;
  } else {
    return numero;
  }
}

double calcularIMC(double peso, double altura) {
  if (altura == 0) {
    print("Altura passada foi zero, não possivel dividir");
    exit(0);
  } else {
    return peso / (altura * altura);
  }
}
