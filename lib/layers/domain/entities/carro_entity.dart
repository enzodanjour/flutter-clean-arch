// entidade que estou lidando

// nao pode haver imports aqui
class CarroEntity {
  String placa;
  int qtdPortas;
  double valor;

  CarroEntity ({required this.placa,required this.qtdPortas,required this.valor});

  // regra de negocio da classe
  double get valorReal{
    return valor * qtdPortas;
  }

  setLogicaValorIncremental(){
    if(valorReal > 10000.00){
      valor * 2;
    }
  }

}
