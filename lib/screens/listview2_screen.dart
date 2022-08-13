import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);
  final options = const ['Taller 1', 'Taller 2', 'Taller 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIST VIEW'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ListTile(
          leading: const Icon(Icons.car_repair_sharp),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            final taller = options[index];
            print(taller);
          },
        ),
        itemCount: options.length,
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
