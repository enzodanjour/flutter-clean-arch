import 'package:arq/core/inject/inject.dart';
import 'package:arq/layers/presentation/ui/pages/carros_page.dart';
import 'package:flutter/material.dart';

void main(){
  Inject.init();
  runApp(MaterialApp(
    home: CarrosPage(),
  ));
}