import 'package:get/get.dart';

class Exercise2ViewModel extends GetxController {
  RxInt enteredNumber = 0.obs;

  void setEnteredNumber(String value) {
    enteredNumber.value = int.tryParse(value) ?? 0;
  }

  String checkEvenOrOdd() {
    return enteredNumber.value % 2 == 0 ? 'Even' : 'Odd';
  }

  void checkAndShowResult(String input) {
    setEnteredNumber(input);
    String result = checkEvenOrOdd();
    Get.snackbar('Result', 'Entered number is $result',
        duration: Duration(seconds: 5), snackPosition: SnackPosition.BOTTOM);
  }
}
