//Make a calculator app,  This app will contain 2 input fields and 4 button (+, - , /, *)
// On pressing any button app should show result of selected operation.
// Make sure app should not crash or give any error by given invalid input.
// Show proper error to the user

import 'package:dart_task/Exercise9/view_model_ex9.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercise9 extends StatelessWidget {
  final ViewModelExercise9 viewModelExercise9 = Get.put(ViewModelExercise9());

  Exercise9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exercise 9'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                viewModelExercise9.firstNumber.value = value;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter first number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              onChanged: (value) {
                viewModelExercise9.secondNumber.value = value;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter second number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    viewModelExercise9.performOperation('+');
                  },
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModelExercise9.performOperation('-');
                  },
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModelExercise9.performOperation('*');
                  },
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModelExercise9.performOperation('/');
                  },
                  child: Text('/'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Obx(() {
              if (viewModelExercise9.errorMessage.value.isNotEmpty) {
                return Text(
                  'Error: ${viewModelExercise9.errorMessage.value}',
                  style: TextStyle(color: Colors.red),
                );
              } else {
                return Text('Result: ${viewModelExercise9.result.value}');
              }
            }),
          ],
        ),
      ),
    );
  }
}
