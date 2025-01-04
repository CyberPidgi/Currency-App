import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './currency_converter_material_page.dart';
import './currency_converter_cupterino_page.dart';

void main() {
  runApp(const MyCuptertinoApp());
}

class MyApp extends StatelessWidget {

  const MyApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),  
    ); 
  }
}


class MyCuptertinoApp extends StatelessWidget {
  const MyCuptertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCuptertinoPage(),  
    ); 
  }
}