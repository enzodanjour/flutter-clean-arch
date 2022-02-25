import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arq/layers/data/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  test(
    'Deve retornar uma instancia de carro quando passado qualquer cor',
    () {
      GetCarrosPorCorDatasource datasource = GetCarrosPorCorLocalDatasourceImp();
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImpl(
        GetCarrosPorCorRepositoryImp(datasource),
      );

      var result = useCase('azul');

      expect(result, isInstanceOf<CarroEntity>());
    },
  );

  test(
    'Deve retornar um carro de 4 portas quando vermelho',
    () {
      GetCarrosPorCorDatasource datasource = GetCarrosPorCorLocalDatasourceImp();
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImpl(
        GetCarrosPorCorRepositoryImp(datasource),
      );

      var result = useCase('vermelho');

      expect(result.qtdPortas, 4);
    },
  );

  test(
    'Deve retornar um carro de 2 portas quando qualquer cor exceto vermelho',
    () {
       GetCarrosPorCorDatasource datasource = GetCarrosPorCorLocalDatasourceImp();
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImpl(
        GetCarrosPorCorRepositoryImp(datasource),
      );

      var result = useCase('azul');

      expect(result.qtdPortas, 2);
    },
  );
}
