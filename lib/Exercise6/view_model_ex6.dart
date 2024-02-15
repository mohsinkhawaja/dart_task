import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ViewModelExercise6 extends GetxController {
  RxBool isPalindrome = RxBool(false);
  RxString name = RxString('');

  void checkPalindromeAndShowAlert() {
    // Remove non-alphanumeric characters and convert to lowercase
    String cleanInput =
        name.value.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

    // Check if the clean input is equal to its reverse
    bool isPalindromeResult =
        cleanInput == cleanInput.split('').reversed.join('');

    // Set the result to the observable variable
    isPalindrome.value = isPalindromeResult;

    // Show an alert box with the result
    String resultText = isPalindromeResult ? 'Palindrome' : 'Not a Palindrome';
    Get.defaultDialog(
      title: 'Result',
      content: Text('The given name "${name.value}" is $resultText.'),
      confirm: TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text('OK'),
      ),
    );
  }
}
