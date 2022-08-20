import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            activeColor: AppTheme.primary,
            divisions: 10,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Checkbox(
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              }),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar / Desabilitar'),
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value ?? true;
            }),
          ),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar / Desabilitar'),
              value: _sliderEnable,
              onChanged: (value) => setState(
                    () {
                      _sliderEnable = value;
                    },
                  )),
          const AboutListTile(),
          Expanded(
            // Es para decirle el largo o el ancho cuando valla creciendo para que funcione el SingleChildScrollView
            child: SingleChildScrollView(
              // para que el contenido cuando se muy grande se pueda hacer scroll
              child: Image(
                image: const NetworkImage(
                    'https://capital.es/wp-content/uploads/2022/08/espacio.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
