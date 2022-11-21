import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navi/home_page.dart';
import 'package:navi/singin_page.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: ((context, state) => HomePage()),
  ),
  GoRoute(
    path: "/signin",
    builder: ((context, state) => SignInPage(name: state.extra as String)),
  )
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router,
    );
  }
}
