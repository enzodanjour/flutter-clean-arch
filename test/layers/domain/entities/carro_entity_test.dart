import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  
  test('espero que a entidade nao seja nula', () {
    CarroEntity carroEntity = CarroEntity(placa: 'abc123', qtdPortas: 5, valor: 1000.00);
    expect(carroEntity, isNotNull);
  });

  test('espero que a quantidade de portas seja 5', () {
    CarroEntity carroEntity = CarroEntity(placa: 'abc123', qtdPortas: 5, valor: 1000.00);
    expect(carroEntity.qtdPortas, 5);
  });

  test('espero que o valor real seja 5k', () {
    CarroEntity carroEntity = CarroEntity(placa: 'abc123', qtdPortas: 5, valor: 1000.00);
    var resultadoEsperado = 5000.00;
    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('espero que o valor real seja 0k', () {
    CarroEntity carroEntity = CarroEntity(placa: 'abc123', qtdPortas:0, valor: 1000.00);
    var resultadoEsperado = 0.00;
    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('espero que o valor seja  seja 30k', () {
    CarroEntity carroEntity = CarroEntity(placa: 'abc123', qtdPortas:2, valor: 15000.00);

    carroEntity.setLogicaValorIncremental();
    var resultadoEsperado = 30000.00;
    expect(carroEntity.valor, resultadoEsperado);
  });
}