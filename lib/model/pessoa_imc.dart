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
    return imc;
  }

}
