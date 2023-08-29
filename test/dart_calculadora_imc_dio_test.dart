import 'package:dart_calculadora_imc_dio/dart_calculadora_imc_dio.dart';
import 'package:dart_calculadora_imc_dio/model/pessoa_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculando IMC errado', () {
    var teste = Pessoa('Raimundo', 1.8, 80);
    expect(teste.calcular(), greaterThan(25.6913580));
  });

  test('calculando IMC correto', () {
    var teste = Pessoa('Raimundo', 1.8, 80);
    expect(teste.calcular(), greaterThanOrEqualTo(24.6913580));
  });
}
