import 'package:meu_app_oo/classes/enum/tipo_notificao.dart';
import 'package:meu_app_oo/classes/pessoa_abstract.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  void setCpf(String cnpj) {
    _cnpj = cnpj;
  }

  String getcnpj() {
    return _cnpj;
  }

  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      "Tipo": "PJ",
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "CNPJ": _cnpj,
      "TipoNoficação": getTipoNotificacao()
    }.toString();
  }
}
