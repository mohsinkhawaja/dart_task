//Write a program to validate password. Take input and validate it. Also show appropriate message to user, what is missing from given input
// Input must match following criteria
// 1) Minimum length should be 6
// 2) Must have uppercase & lower case character
// 3) Should contain atleast 1 special character
// 4) Should not contain any space
// lib/screens/password_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dart_task/Exercise8/view_model_ex8.dart';

class Exercise8 extends StatelessWidget {
  final ViewModelExercise8 viewModel = Get.put(ViewModelExercise8());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 8'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: viewModel.passwordController,
              obscureText: true, // Hide password
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  viewModel.validatePassword();
                },
                child: Text('Enter'),
              ),
            ),
            Obx(() {
              if (viewModel.showSnackbar.value) {
                Get.snackbar('Success', 'You have entered a strong password!',
                    backgroundColor: Colors.green);
                return Container();
              } else if (viewModel.showError.value) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    viewModel.errorText.value,
                    style: TextStyle(color: Colors.red),
                  ),
                );
              } else {
                return Container();
              }
            }),
          ],
        ),
      ),
    );
  }
}
