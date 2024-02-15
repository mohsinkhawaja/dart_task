// view_model_ex9.dart

import 'package:get/get.dart';

class ViewModelExercise9 extends GetxController {
  RxString firstNumber = RxString('');
  RxString secondNumber = RxString('');
  RxString result = RxString('');
  RxString errorMessage = RxString('');

  void performOperation(String operation) {
    errorMessage.value = ''; // Reset error message

    try {
      double num1 = double.parse(firstNumber.value);
      double num2 = double.parse(secondNumber.value);

      switch (operation) {
        case '+':
          result.value = (num1 + num2).toString();
          break;
        case '-':
          result.value = (num1 - num2).toString();
          break;
        case '*':
          result.value = (num1 * num2).toString();
          break;
        case '/':
          if (num2 == 0) {
            errorMessage.value = 'Cannot divide by zero';
          } else {
            result.value = (num1 / num2).toString();
          }
          break;
        default:
          errorMessage.value = 'Invalid operation';
      }
    } catch (e) {
      errorMessage.value = 'Invalid input. Please enter valid numbers.';
    }
  }
}
