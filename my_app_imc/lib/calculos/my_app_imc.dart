import 'package:my_app_imc/ultils/ultils.dart' as utils;

void Calcular(String nome, double peso, double altura) {
  print("peso passado $peso");
  print("altura passada $altura");
  double resultado;
  resultado = utils.calcularIMC(peso, altura);
  print(resultado);
  print("Bem vindo $nome ao seu sistema de imc");
  print("Fazendo seu calculo..");
  if (resultado < 16) {
    print("$resultado");
    print("magreza severa");
  } else if (resultado < 17) {
    print("$resultado");
    print("Magreza moderada");
  } else if (resultado < 18.5) {
    print("$resultado");
    print("Magreza leve");
  } else if (resultado < 25) {
    print("$resultado");
    print("Saudavel");
  } else if (resultado < 30) {
    print("$resultado");
    print("Sobre peso");
  } else if (resultado < 35) {
    print("$resultado");
    print("Obesidade grau I");
  } else if (resultado < 40) {
    print("$resultado");
    print("Obeseidade grau II");
  } else if (resultado >= 40) {
    print("$resultado");
    print("obsidade grau III");
  }
}
