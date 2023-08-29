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
  pessoa.calcular();

}
