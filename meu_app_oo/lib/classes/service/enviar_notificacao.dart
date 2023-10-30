import 'package:meu_app_oo/classes/enum/tipo_notificao.dart';
import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/classes/service/impl/notifcacao_sms.dart';
import 'package:meu_app_oo/classes/service/impl/notificacao_push_notification.dart';
import 'package:meu_app_oo/classes/service/impl/notificao_email.dart';
import 'package:meu_app_oo/classes/service/notifcacaoInterface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = Notificacaoemail();
        break;
      case TipoNotificacao.PUSH_NOTIFCATION:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("${pessoa.getNome()},  não possuir email");
    }
  }
}
