import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // To do: borrar home
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'List view 1',
        screen: const Listview1Screen(),
        icon: Icons.format_line_spacing_rounded),
    MenuOption(
        route: 'listview2',
        name: 'List view 2',
        screen: const Listview2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.alarm),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.credit_score_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //  'home': (BuildContext context) => const HomeScreen(),
  //  'listview1': (BuildContext context) => const Listview1Screen(),
  //  'listview2': (BuildContext context) => const Listview2Screen(),
  //  'alert': (BuildContext context) => const AlertScreen(),
  //  'card': (BuildContext context) => const CardScreen(),
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
