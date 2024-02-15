import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserData {
  RxString name = ''.obs;
  RxInt age = 0.obs;
}

class UserController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final userData = UserData().obs;

  void setName(String value) {
    userData.update((val) {
      val!.name.value = value;
    });
  }

  void setAge(String value) {
    userData.update((val) {
      val!.age.value = int.tryParse(value) ?? 0;
    });
  }

  void calculateYearsTo100() {
    if (userData.value.name != null && userData.value.age != null) {
      int yearsTo100 = 100 - userData.value.age.value;
      String message = yearsTo100 == 0
          ? 'Congratulations! You are already 100 years old!'
          : 'You have $yearsTo100 years to be 100 years old.';

      // print('userName: ${userData.value.name.value}');
      // print('userAge: ${userData.value.age.value}');

      // Show alert dialog
      Get.defaultDialog(
        title: 'Remaining Years to 100',
        middleText: message,
        actions: [
          TextButton(
            onPressed: () {
              Get.back(); // Close the dialog
            },
            child: Text('OK'),
          ),
        ],
      );
    }
  }
}
