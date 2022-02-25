
import '../../entities/carro_entity.dart';
import '../../repositories/get_carros_por_cor_repository.dart';
import 'get_carros_por_cor_usecase.dart';

// so importa da camada mais externa
class GetCarrosPorCorUseCaseImpl implements GetCarrosPorCorUseCase {

  final GetCarrosPorCorRepository _repository;

  GetCarrosPorCorUseCaseImpl(this._repository);

  @override
  CarroEntity call(String cor) {
    return _repository(cor);
  }

}