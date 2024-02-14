//Ask the user for a number and determine whether the number is prime or not.
import 'package:dart_task/Exercise5/view_model_ex5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercise5 extends StatelessWidget {
  final ViewModelExercise5 viewModelExercise5 = Get.put(ViewModelExercise5());
  TextEditingController evenOrOddController = TextEditingController();
  Exercise5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exercise 5'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter any Number',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: TextField(
                controller: evenOrOddController,
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
                  int number = int.tryParse(evenOrOddController.text) ?? 0;
                  viewModelExercise5.findPrime(number);
                },
                child: Text('Find'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
