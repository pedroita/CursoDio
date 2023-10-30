import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('calcula o desconto do produto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), equals(850));
  });

  test('calcula o desconto do produto com porcentagem 1', () {
    expect(app.calcularDesconto(1000, 15, true), equals(850));
  });

  test('calcula o desconto do produto valor zerado', () {
    expect(() => app.calcularDesconto(0, 150, true), throwsA(TypeMatcher()));
  });

  test('calcula o desconto do produto sendo  zerado', () {
    expect(() => app.calcularDesconto(10, 0, true), throwsA(TypeMatcher()));
  });
}
