import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/main_page.dart';
import 'package:myapp/screens/screens.dart';

final GoRouter router = GoRouter(debugLogDiagnostics: false, routes: <GoRoute>[
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainPage();
      },
      routes: [
        GoRoute(
          path: 'app1',
          builder: (BuildContext context, GoRouterState state) {
            return const App1();
          },
        ),
        GoRoute(
          path: 'app2',
          builder: (BuildContext context, GoRouterState state) {
            return const App2();
          },
        ),
        GoRoute(
          path: 'app3',
          builder: (BuildContext context, GoRouterState state) {
            return const App3();
          },
        ),
        GoRoute(
          path: 'app4',
          builder: (BuildContext context, GoRouterState state) {
            return const App4();
          },
        ),
      ]),
]);
