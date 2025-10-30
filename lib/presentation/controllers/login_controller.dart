import 'package:flutter/material.dart';

class LoginController {
  LoginController._();

  static LoginController? _instance;
  static LoginController get instance => _instance ??= LoginController._();

  FocusNode? emailFocus;
  FocusNode? passwordFocus;
  TextEditingController? emailController;
  TextEditingController? passwordController;

  // Formun dolu olub-olmadığını izləyən notifier
  final ValueNotifier<bool> isFormValid = ValueNotifier(false);

  void init() {
    emailFocus = FocusNode();
    passwordFocus = FocusNode();
    emailController = TextEditingController();
    passwordController = TextEditingController();

    // Email və password dəyişəndə yoxlayırıq
    emailController!.addListener(_validateForm);
    passwordController!.addListener(_validateForm);
  }

  void _validateForm() {
    final isValid = emailController!.text.isNotEmpty &&
        passwordController!.text.isNotEmpty;
    isFormValid.value = isValid;
  }

  void dispose() {
    emailFocus?.dispose();
    passwordFocus?.dispose();
    emailController?.dispose();
    passwordController?.dispose();
    isFormValid.dispose();
    emailFocus = null;
    passwordFocus = null;
    emailController = null;
    passwordController = null;
  }
}
