import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {

  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ColoredBox(
          color: Color.fromARGB(255, 167, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '0',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)
                ),
              ),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                  decoration: InputDecoration(
                    
                  )   
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}