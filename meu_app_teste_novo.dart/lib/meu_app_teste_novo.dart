import 'package:http/http.dart' as http;

int calculate() {
  return 6 * 7;
}

dynamic retonarCep(String cep) async {
  var uri = Uri.parse("https://viacep.com.br/ws/$cep/json/");
  var retorno = await http.get(uri);
  return retorno.body;
}
