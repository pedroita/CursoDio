import 'package:meu_app_oo/classes/enum/tipo_notificao.dart';
import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/classes/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  // var p1 = Pessoa("Italo", "Rua das flores");
  //p1.name = "Italo";
  //p1.endereco = "Rua 1";
  // print(p1.name);
  // print(p1.endereco);
  //p1.setNome("Danilo");
  //p1.setEndereco("Rua das flores");
  // print(p1.getNome());
  // print(p1.getEndereco());

  var pessoaFisica1 = PessoaFisica("Italo", "Rua das ostras", "045852429029");
  print(pessoaFisica1);

  var pessoaJuridica = PessoaJuridica(
      "Marcos", "rua amarela", "056484988948965",
      tipoNotificacao: TipoNotificacao.EMAIL);
  print(pessoaJuridica);
  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica);
}
