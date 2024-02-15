import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewModelExercise8 extends GetxController {
  TextEditingController passwordController = TextEditingController();
  var showSnackbar = false.obs;
  var showError = false.obs;
  var errorText = ''.obs;

  void validatePassword() {
    String password = passwordController.text;

    // Reset state
    showSnackbar.value = false;
    showError.value = false;
    errorText.value = '';

    // Perform password validation
    if (password.length < 6) {
      showError.value = true;
      errorText.value = 'Password must be at least 6 characters long';
    } else if (!password.contains(RegExp(r'[A-Z]')) ||
        !password.contains(RegExp(r'[a-z]'))) {
      showError.value = true;
      errorText.value =
          'Password must have both uppercase and lowercase characters';
    } else if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      showError.value = true;
      errorText.value = 'Password must contain at least 1 special character';
    } else if (password.contains(' ')) {
      showError.value = true;
      errorText.value = 'Password should not contain any space';
    } else {
      // Password is valid, show success message
      showSnackbar.value = true;
    }
  }
}
