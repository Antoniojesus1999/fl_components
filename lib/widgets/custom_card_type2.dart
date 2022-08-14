import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          FadeInImage(
              placeholder: AssetImage('assets/a.gif'),
              image: NetworkImage(
                  'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg')),
        ],
      ),
    );
  }
}
