import 'package:dart_task/Exercise7/view_model_ex7.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercise7 extends StatelessWidget {
  final ViewModelExercise7 viewModelExercise7 = Get.put(ViewModelExercise7());

  Exercise7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exercise 7'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Enter variables separated by comma',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (value) {
                viewModelExercise7.findLargest(value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Variables',
                hintText: 'Enter three variables separated by commas',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              viewModelExercise7.showResultAlert();
            },
            child: Text('Find Greatest'),
          ),
        ],
      ),
    );
  }
}
