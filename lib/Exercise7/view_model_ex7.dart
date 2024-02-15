import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ViewModelExercise7 extends GetxController {
  RxString result = RxString('');

  void findLargest(String input) {
    List<String> variables = input.split(',');

    if (variables.length != 3) {
      result.value = 'Please enter three variables separated by commas.';
      return;
    }

    try {
      double var1 = double.parse(variables[0]);
      double var2 = double.parse(variables[1]);
      double var3 = double.parse(variables[2]);

      double largest = var1;

      if (var2 > largest) {
        largest = var2;
      }

      if (var3 > largest) {
        largest = var3;
      }

      result.value = 'The largest of the three variables is: $largest';
    } catch (e) {
      result.value = 'Invalid input. Please enter valid numeric values.';
    }
  }

  void showResultAlert() {
    Get.defaultDialog(
      title: 'Result',
      content: Text(result.value),
      confirm: TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text('OK'),
      ),
    );
  }
}
