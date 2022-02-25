// faz conversoes de tipos e transferencias de dados
// entidade nao deve ser modelada de acordo com a api
// deve ser modelada com a regra de negocios
import 'package:arq/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadeDePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
          placa: placa,
          qtdPortas: quantidadeDePortas,
          valor: valorFinal,
        );

  Map toMap() {
    return {
      'placa': placa,
      'quantidadeDePortas': quantidadeDePortas,
      'valor': valorFinal,
    };
  }

  static CarroDto fromMap(Map map) {
    return CarroDto(
      placa: map['placa'],
      quantidadeDePortas: map['quantidadeDePortas'],
      valorFinal: map['valorFinal'],
    );
  }
}
