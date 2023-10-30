import 'package:meu_app_oo/classes/enum/tipo_notificao.dart';
import 'package:meu_app_oo/classes/pessoa_abstract.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(String nome, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Tipo": "PF",
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "CPF": _cpf,
      "TipoNoficação": getTipoNotificacao()
    }.toString();
  }
}
