import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final options = const ['Taller 1', 'Taller 2', 'Taller 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIST VIEW'),
      ),
      body: ListView(
        children: [
          ...options
              .map((taller) => ListTile(
                    leading: const Icon(Icons.car_repair_sharp),
                    title: Text(taller),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList()

          // ListTile(
          //   leading: Icon(Icons.car_crash),
          //   title: Text('Hola Mundo'),
          // )
        ],
      ),
    );
  }
}
