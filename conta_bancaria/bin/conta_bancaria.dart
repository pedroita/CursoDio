import 'dart:io';

class Bancaria {
  int numeroConta;
  String nomeTitular;
  double saldo;

  Bancaria(this.numeroConta, this.nomeTitular, this.saldo);

  int getNumeroConta() {
    return numeroConta;
  }

  String getNomeTitular() {
    return nomeTitular;
  }

  double getSaldo() {
    return saldo;
  }
}

void main() {
  int numeroConta = int.parse(stdin.readLineSync()!);
  String nomeTitular = stdin.readLineSync()!;
  double saldo = double.parse(stdin.readLineSync()!);

  //TODO: Criar uma instância de "ContaBancaria" com os valores de Entrada.
  var contaBancaria = Bancaria(numeroConta, nomeTitular, saldo);
  print("Informacoes:");
  print("Conta: ${contaBancaria.getNumeroConta()}");
  print("Titular: ${contaBancaria.getNomeTitular()}");
  print("Saldo: R\$${contaBancaria.getSaldo()}");
  //TODO: Imprimir as informações da conta usando o objeto criado no TODO acima.
}
