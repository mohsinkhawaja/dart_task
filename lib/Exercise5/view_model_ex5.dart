import 'package:get/get.dart';

class ViewModelExercise5 extends GetxController {
  RxBool isPrime = false.obs;

  bool checkPrime(int number) {
    isPrime.value = true;

    if (number <= 1) {
      isPrime.value = false;
    } else {
      for (int i = 2; i <= number / 2; i++) {
        if (number % i == 0) {
          isPrime.value = false;
          break;
        }
      }
    }

    return isPrime.value;
  }

  String getResultMessage(int number) {
    bool isPrime = checkPrime(number);
    return isPrime
        ? '$number is a prime number.'
        : '$number is not a prime number.';
  }

  void findPrime(int number) {
    String resultMessage = getResultMessage(number);

    Get.snackbar(
      'Result',
      resultMessage,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
