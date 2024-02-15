import 'package:dart_task/Exercise6/view_model_ex6.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercise6 extends StatelessWidget {
  final ViewModelExercise6 viewModelExercise6 = Get.put(ViewModelExercise6());

  Exercise6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exercise 6'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Check the string whether palindrome or not',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Name'),
                onChanged: (value) {
                  viewModelExercise6.name.value = value;
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (viewModelExercise6.name.isNotEmpty) {
                    viewModelExercise6.checkPalindromeAndShowAlert();
                  }
                },
                child: Text('Check'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
