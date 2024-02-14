import 'package:get/get.dart';

class ViewModelExercise3 extends GetxController {
  RxList<int> myList = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89].obs;

  List<int> getElementsLessThan5() {
    return myList.where((element) => element < 5).toList();
  }

  void showResultSnackbar() {
    List<int> result = getElementsLessThan5();
    Get.snackbar(
      'Result',
      'Elements less than 5 are: $result',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
// class ViewModelExercise3 extends GetxController {
//   RxList<int> myList = [].obs;
//
//   void setListFromString(String input) {
//     myList.value = input
//         .split(',')
//         .map((element) => int.tryParse(element.trim()) ?? 0)
//         .toList();
//   }
//
//   List<int> getElementsLessThan5() {
//     return myList.where((element) => element < 5).toList();
//   }
//
//   void showResultSnackbar() {
//     List<int> result = getElementsLessThan5();
//     Get.snackbar(
//       'Result',
//       'Elements less than 5: $result',
//       snackPosition: SnackPosition.BOTTOM,
//     );
//   }
// }
