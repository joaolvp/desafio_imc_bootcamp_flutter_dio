import 'dart:convert';
import 'dart:io';

import 'package:dart_calculadora_imc_dio/model/pessoa_imc.dart';

calculate() {
  double peso;
  double altura;

  print('Bem vindo a Calculadora de IMC!');
  print('======================================');
  
  print('Digite seu nome');
  String? inputNome = stdin.readLineSync(encoding: utf8);
  inputNome!.trim() == '' ? inputNome = 'Pessoa': inputNome;
  
  print('Digite seu peso(em quilos)');
  String? inputPeso = stdin.readLineSync();
   try{
    peso = double.parse(inputPeso!);
  }catch(e){
    print('Peso Inválido... Saindo do Programa.');
    exit(0);
  }

  print('Digite sua altura(em metros)');
  String? inputAltura = stdin.readLineSync();
  try{
    altura = double.parse(inputAltura!);
  }catch(e){
    print('Altura Inválida... Saindo do Programa.');
    exit(0);
  }

  var pessoa = Pessoa(inputNome, altura, peso);
  var imc = pessoa.calcular();
  switch (imc){
      case < 16:
        return print('${pessoa.getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Magreza grave');
      case >= 16  && < 17:
        return print('${pessoa.getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Magreza moderada');
      case >= 17 && < 18.5:
        return print('${pessoa.getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Magreza leve');
      case >= 18.5 && < 25:
        return print('${pessoa.getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Saudável');
      case >= 25 && < 30:
        return print('${pessoa.getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Sobrepeso');
      case >= 30 && < 35:
        return print('${pessoa.getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Obesidade Grau I');
      case >= 35 && < 40:
        return print('${pessoa.getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Obesidade Grau II(severa)');
      case >=  40:
        return print('${pessoa.getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Obesidade Grau III(mórbida)');
    }

}
