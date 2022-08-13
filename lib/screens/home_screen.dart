import 'package:fl_components/screens/app_router.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading:
              Icon(AppRouter.menuOptions[index].icon, color: AppTheme.primary),
          title: Text(AppRouter.menuOptions[index].name),
          onTap: () {
            Navigator.pushNamed(context, AppRouter.menuOptions[index].route);
          },
        ),
        itemCount: AppRouter.menuOptions.length,
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
