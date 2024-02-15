//Ask the user for a number. Depending on whether the number is even or odd,
//print out an appropriate message to the user.
import 'package:dart_task/Exercise2/view_model_ex2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercise2 extends StatelessWidget {
  final Exercise2ViewModel viewModel = Get.put(Exercise2ViewModel());

  Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exercise 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter any number',
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TextField(
                controller: viewModel.numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter any Number',
                  labelText: 'Number',
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  viewModel.checkAndShowResult(viewModel.numberController.text);
                },
                child: Text('Search'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
