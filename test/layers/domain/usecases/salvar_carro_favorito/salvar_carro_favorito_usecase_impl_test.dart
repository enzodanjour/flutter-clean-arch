import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImpl
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

void main() {
  test('deve salvar o carro com sucesso', () async{
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImpl(SalvarCarroFavoritoRepositoryImpl());

    var carro = CarroEntity(placa: 'QWA1234', qtdPortas: 2, valor: 1);

    var result = await useCase(carro);

    expect(result, true);
  });

  test('nao deve salvar o carro quando o valor for menor ou igual a 0', () async{
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImpl(SalvarCarroFavoritoRepositoryImpl());

    var carro = CarroEntity(placa: 'QWA1234', qtdPortas: 2, valor: 0);

    var result = await useCase(carro);

    expect(result, false);
  });
}
