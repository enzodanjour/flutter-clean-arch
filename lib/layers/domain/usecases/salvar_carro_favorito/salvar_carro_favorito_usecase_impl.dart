import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/salvar_carro_favorito_repository.dart';

import 'salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImpl implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroRepository;

  SalvarCarroFavoritoUseCaseImpl(this._salvarCarroRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async  {
  carroEntity.setLogicaValorIncremental();
    return await  _salvarCarroRepository(carroEntity);
  }
}
