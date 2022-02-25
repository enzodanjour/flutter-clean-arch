import '../entities/carro_entity.dart';

abstract class GetCarrosPorCorRepository {
  // contrato
  CarroEntity call(String cor);
}
