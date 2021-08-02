import 'package:flutter/material.dart';
import 'package:tuts_provider_consumer/auth_service.dart';

class LoginController extends ChangeNotifier {
  // Service should be of type Singleton (only one instance is created and used by the entire application)
  // The example here is not showing a singleton but rather instantiate a new instance
  // For simplicity sake, we will go with that
  AuthService _authService = AuthService();

  // Initialize the starting state to be Initial
  LoginState _state = LoginState.Initial;
  //
  LoginState get state => _state;

  // Login with email method (event)
  Future<void> loginWithEmail(
      String username, String password, bool mockResult) async {
    // First update state loading
    _setState(LoginState.Loading);

    // Process all business logic
    bool result = await _authService.loginWithEmail(mockResult);

    // Finally update state with result state
    result ? _setState(LoginState.Done) : _setState(LoginState.Error);
  }

  // Update current state and notify all reigstered listener
  void _setState(LoginState state) {
    _state = state;
    notifyListeners();
  }
}

// These are the states that a screen should handle
enum LoginState { Initial, Loading, Done, Error }
