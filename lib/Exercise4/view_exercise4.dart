//Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
//If you don’t know what a divisor is, it is a number that divides evenly into another number.
//For example, 13 is a divisor of 26 because 26 / 13 has no remainder.
import 'package:dart_task/Exercise4/view_model_ex4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercise4 extends StatelessWidget {
  final ViewModelExercise4 viewModelExercise4 = Get.put(ViewModelExercise4());

  Exercise4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exercise 4'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter a number',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: TextField(
                controller: viewModelExercise4.numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Number',
                    labelText: 'Number'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  viewModelExercise4.findDivisorsAndShowSnackbar(
                      viewModelExercise4.numberController.text);
                },
                child: Text('Search Devisior'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
