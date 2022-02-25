import 'package:arq/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarrosPage extends StatelessWidget {
  CarrosPage({Key? key}) : super(key: key);

  var _controller = GetIt.instance.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(_controller.carro.placa),
      ),
    );
  }
}
