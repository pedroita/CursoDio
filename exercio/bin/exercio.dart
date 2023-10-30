import 'dart:io';

void main() {
  double valor = double.parse(stdin.readLineSync()!);
  var saldo = valor.toStringAsFixed(2);
  if (valor > 0) {
    print("Deposito realizado com sucesso!");
    print("Saldo atual: R\$ $saldo ");
    //TODO: Imprimir a mensagem de sucesso, formatando o saldo atual (vide Exemplos).
  } else if (valor == 0) {
    //TODO: Imprimir a mensagem de valor inválido.
    print("Encerrando o programa...");
  } else {
    print("Valor invalido! Digite um valor maior que zero.");
  }
}
