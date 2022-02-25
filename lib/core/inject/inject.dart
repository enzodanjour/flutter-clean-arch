import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arq/layers/data/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arq/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_impl.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_impl.dart';
import 'package:arq/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

import '../../layers/data/repositories/get_carro_por_cor_repository_imp.dart';

// independente de packages e so com uma unica responsabilidade
class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // DATASOURCE
    getIt.registerLazySingleton<GetCarrosPorCorDatasource>(
      () => GetCarrosPorCorLocalDatasourceImp(),
    );
    // REPOSITORIES
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
      () => GetCarrosPorCorRepositoryImp(
        getIt(),
      ),
    );

    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
      () => SalvarCarroFavoritoRepositoryImpl(),
    );
    // USECASES
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
      () => GetCarrosPorCorUseCaseImpl(
        getIt(),
      ),
    );

    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
      () => SalvarCarroFavoritoUseCaseImpl(
        getIt(),
      ),
    );

    // controllers
    getIt.registerFactory<CarroController>(
      () => CarroController(
        getIt(),
        getIt(),
      ),
    );
  }
}

