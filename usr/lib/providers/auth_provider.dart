import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  String? _userId;

  bool get isAuthenticated => _isAuthenticated;
  String? get userId => _userId;

  void login(String email, String password) {
    // Mock authentication
    _isAuthenticated = true;
    _userId = 'mock-user-id';
    notifyListeners();
  }

  void signup(String email, String password, String name) {
    // Mock signup and auto-create profile/family member
    _isAuthenticated = true;
    _userId = 'mock-user-id';
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    _userId = null;
    notifyListeners();
  }
}