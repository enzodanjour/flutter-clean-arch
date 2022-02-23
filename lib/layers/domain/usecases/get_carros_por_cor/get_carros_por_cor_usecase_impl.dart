import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'get_carros_por_cor_usecase.dart';

// so importa da camada mais externa
class GetCarrosPorCorUseCaseImpl implements GetCarrosPorCorUseCase {

  @override
  CarroEntity call(String cor) {
    if(cor.contains('vermelho')){
      return CarroEntity(placa: 'abc1234', qtdPortas: 4, valor: 5000.00);
    }
    return CarroEntity(placa: 'qwe7897', qtdPortas: 2, valor: 2000.00);
  }

}