import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'List View 1',
        screen: const ListView1Screen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'listview2',
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.crisis_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.card_membership_sharp),
    MenuOption(
        route: 'avatar',
        name: 'Circule Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.local_play_outlined),
    MenuOption(
        route: 'input',
        name: 'Inputs And Forms',
        screen: const InputScreen(),
        icon: Icons.input_outlined),
    MenuOption(
        route: 'slider',
        name: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),
    MenuOption(
        route: 'listViewBuilder',
        name: 'InfiniteScroll & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRouter = {};
    appRouter.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRouter.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRouter;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
