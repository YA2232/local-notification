import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:local_notification/presentation/home/screens/details_screen.dart';
import 'package:local_notification/presentation/home/screens/home_screen.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(routes: [
    GoRoute(
        path: "/",
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen();
        }),
    GoRoute(
        path: "/details",
        builder: (context, state) {
          final paylod = state.extra as String;
          return DetailsScreen(paylod: paylod);
        }),
  ]);
}
