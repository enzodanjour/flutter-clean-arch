import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'abc1234', qtdPortas: 4, valor: 5000.00);
    }
    return CarroEntity(placa: 'qwe7897', qtdPortas: 2, valor: 2000.00);
  }
}

void main() {
  test(
    'Deve retornar uma instancia de carro quando passado qualquer cor',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImpl(
        GetCarrosPorCorRepositoryImp(),
      );

      var result = useCase('azul');

      expect(result, isInstanceOf<CarroEntity>());
    },
  );

  test(
    'Deve retornar um carro de 4 portas quando vermelho',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImpl(
        GetCarrosPorCorRepositoryImp(),
      );

      var result = useCase('vermelho');

      expect(result.qtdPortas, 4);
    },
  );

  test(
    'Deve retornar um carro de 2 portas quando qualquer cor exceto vermelho',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImpl(
        GetCarrosPorCorRepositoryImp(),
      );

      var result = useCase('azul');

      expect(result.qtdPortas, 2);
    },
  );
}
