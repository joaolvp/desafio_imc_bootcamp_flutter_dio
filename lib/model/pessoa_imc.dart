class Pessoa {
  String _nome="";
  double _peso=0.0;
  double _altura=0.0;


  Pessoa(String nome, double altura, double peso) {
    _nome = nome;
    _altura = altura;
    _peso = peso;
  } 

  String getNome() {
    return _nome;
  } 

  

  calcular(){
    double imc = _peso / (_altura * _altura);
    verificacao(imc);
    //return imc;

  }

  verificacao(double imc){
    switch (imc){
      case < 16:
        return print('${getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Magreza grave');
      case >= 16  && < 17:
        return print('${getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Magreza moderada');
      case >= 17 && < 18.5:
        return print('${getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Magreza leve');
      case >= 18.5 && < 25:
        return print('${getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Saudável');
      case >= 25 && < 30:
        return print('${getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Sobrepeso');
      case >= 30 && < 35:
        return print('${getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Obesidade Grau I');
      case >= 35 && < 40:
        return print('${getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Obesidade Grau II(severa)');
      case >=  40:
        return print('${getNome()} seu IMC é: ${imc.toStringAsFixed(2)} = Obesidade Grau III(mórbida)');
    }
  }
}
