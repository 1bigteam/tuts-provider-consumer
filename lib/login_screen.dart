import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tuts_provider_consumer/login_controller.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                "Current Login State: ${describeEnum(context.watch<LoginController>().state)}"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => context
                  .read<LoginController>()
                  .loginWithEmail("Username", "Password", true),
              child: Text('Login with True'),
            ),
            ElevatedButton(
              onPressed: () => context
                  .read<LoginController>()
                  .loginWithEmail("Username", "Password", false),
              child: Text('Login with False'),
            )
          ],
        ),
      ),
    );
  }
}
