import 'package:flutter_test/flutter_test.dart';

import '../bin/imc/imc.dart';

void main() {
  group('Imc calculation and messages', () {
    test('Calculate IMC', () {
      expect(Imc.calculateImc(70, 1.75), '22.86');
    });

    test('IMC message', () {
      var imc =
          Imc.calculateImc(70, 1.75); // Calcule o IMC para usar nos testes
      expect(
          Imc().messageImc(double.parse(imc)), 'Seu IMC é: 22.86, Peso ideal');
    });
  });
}
