import 'dart:convert';
import 'dart:io';

import 'imc/imc.dart';
import 'imc/pessoa_model.dart';

void main() {
  print('Olá, para começar-mos Digite seu nome');
  var dataName = stdin.readLineSync(encoding: utf8);
  print('--------------------------');

  print('Digite seu Peso');
  var dataWeith = stdin.readLineSync(encoding: utf8);
  print('--------------------------');

  print('Digite sua Altura');
  var dataAlt = stdin.readLineSync(encoding: utf8);

  var pessoa = Pessoa(
      name: dataName!,
      peso: double.parse(dataWeith!),
      altura: double.parse(dataAlt!));

  try {
    var total = Imc.calculateImc(pessoa.peso, pessoa.altura);

    final message = Imc().messageImc(double.parse(total));

    print(message);
  } on Exception catch (e) {
    Exception('Erro ao Calcular IMC!!!!! $e');
  }
}
