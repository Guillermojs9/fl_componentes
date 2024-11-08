import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: "home",
        icon: Icons.house_rounded,
        name: "Home Screen",
        screen: const HomeScreen()),
    MenuOption(
        route: "listview1",
        icon: Icons.list_alt_outlined,
        name: "ListView1",
        screen: const Listview1Screen()),
    MenuOption(
        route: "listview2",
        icon: Icons.list_alt_rounded,
        name: "ListView2",
        screen: const Listview2Screen()),
    MenuOption(
        route: "card",
        icon: Icons.card_membership,
        name: "Card",
        screen: const CardScreen()),
    MenuOption(
        route: "alert",
        icon: Icons.bus_alert_outlined,
        name: "Alert",
        screen: const AlertScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateSettings(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
