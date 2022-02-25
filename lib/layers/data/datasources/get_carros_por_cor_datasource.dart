
import '../dtos/carro_dto.dart';

abstract class GetCarrosPorCorDatasource {
  CarroDto call(String cor);
}