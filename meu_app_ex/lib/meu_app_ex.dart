import 'dart:io';

import 'package:meu_app_ex/exception/nome_invalido_exception.dart';
import 'package:meu_app_ex/models/alunos.dart';
import 'package:meu_app_ex/models/console_ultils.dart';

void execute() {
  print("Bem vindo ao sistema de notas");
  String nome = ConsoleUltis.lerStringComTexto("Digite o nome do aluno: ");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "nome padrao";
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  var aluno = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUltis.lerDoubleComTextoComSaida(
        "Digite a nota do aluno ou S para sair: ", "S");
    if (nota != null) {
      aluno.adicioanarNotas(nota);
    }
  } while (nota != null);
  print("As notas digitadas foram: ${aluno.getNotas()}");

  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} aprovado ");
  } else {
    print("O aluno ${aluno.getNome()} reprovado ");
  }
}
