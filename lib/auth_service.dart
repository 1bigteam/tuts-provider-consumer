class AuthService {
  // Mock login with email service method
  Future<bool> loginWithEmail(bool mockResult) async {
    // Setup a 3 seconds delay
    await Future.delayed(Duration(seconds: 3));

    // Return with a mock result
    return mockResult;
  }
}
