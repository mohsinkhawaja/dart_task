import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ViewModelExercise4 extends GetxController {
  TextEditingController numberController = TextEditingController();
  RxList<int> divisors = <int>[].obs;

  void findDivisors(int number) {
    divisors.clear();
    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        divisors.add(i);
      }
    }
  }

  void findDivisorsAndShowSnackbar(String input) {
    int number = int.tryParse(input) ?? 0;
    findDivisors(number);

    List<int> divisorsList = divisors;
    Get.snackbar(
      'Divisors',
      'List of divisors: $divisorsList',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
