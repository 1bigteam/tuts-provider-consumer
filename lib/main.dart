import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuts_provider_consumer/login_controller.dart';
import 'package:tuts_provider_consumer/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Provider Consumer Demo',
        home: ChangeNotifierProvider(
          create: (_) => LoginController(),
          child: LoginScreen(),
        ));
  }
}
