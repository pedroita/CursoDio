import 'dart:convert';
import 'dart:io';
import 'package:my_app_imc/classes/Pessoa.dart';
import 'package:my_app_imc/ultils/ultils.dart' as utils;
import 'package:my_app_imc/calculos/my_app_imc.dart' as calculo;

void main(List<String> arguments) {
  var nome = utils.lerConsole("Qual seu nome? ");
  var peso = utils.lerConsoleDouble("Digite sua peso:");
  var altura = utils.lerConsoleDouble("Digite seu altura: ");
  var pessoa = new Pessoa();
  pessoa.setNome(nome);
  pessoa.setPeso(peso);
  pessoa.setAltura(altura);
  calculo.Calcular(pessoa.nome, pessoa.peso, pessoa.altura);
}
