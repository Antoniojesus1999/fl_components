import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType extends StatelessWidget {
  const CustomCardType({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un título'),
            subtitle: Text(
                'Veniam id pariatur irure sint culpa Lorem. Aute do deserunt dolore laboris. Voluptate fugiat laborum elit cillum amet magna pariatur ut labore. Mollit esse elit ipsum nostrud labore incididunt elit commodo.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(onPressed: () {}, child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('Ok'))
            ]),
          )
        ],
      ),
    );
  }
}
