import '../../entities/carro_entity.dart';

abstract class GetCarrosPorCorUseCase {
  // contrato
  CarroEntity call(String cor);
}
