import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arq/layers/data/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:arq/layers/data/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_impl.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_impl.dart';
import 'package:arq/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';

class CarrosPage extends StatelessWidget {
  CarrosPage({Key? key}) : super(key: key);

  CarroController controller = CarroController(
    GetCarrosPorCorUseCaseImpl(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDatasourceImp()
      )
    ),
    SalvarCarroFavoritoUseCaseImpl(
      SalvarCarroFavoritoRepositoryImpl(

      )
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
