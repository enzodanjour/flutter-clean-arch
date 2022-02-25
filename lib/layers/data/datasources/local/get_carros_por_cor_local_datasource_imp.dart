import 'package:arq/layers/data/dtos/carro_dto.dart';
import '../get_carros_por_cor_datasource.dart';

class GetCarrosPorCorLocalDatasourceImp
    implements GetCarrosPorCorDatasource {

      final jsonVermelho =   {
      'placa': 'ABC1234',
      'quantidadeDePortas': 4,
      'valorFinal': 5000.00,
    };

    final jsonAny =   {
      'placa': 'qwe',
      'quantidadeDePortas': 2,
      'valorFinal': 2000.00,
    };
    
  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonAny);
  }
      
    }
