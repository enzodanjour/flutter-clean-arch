import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../dtos/carro_dto.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository{

  final GetCarrosPorCorDatasource _carrosPorCorDatasource;

  GetCarrosPorCorRepositoryImp(this._carrosPorCorDatasource);

  @override
  CarroEntity call(String cor) {
    // chamamos a api e ela resspondeu um json;
    return _carrosPorCorDatasource(cor);
  }
  
}