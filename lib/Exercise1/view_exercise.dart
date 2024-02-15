//Create a program that asks the user to enter their name and their age.
//Print out a message that tells how many years they have to be 100 years old.
import 'package:dart_task/Exercise1/view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercise1 extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exercise 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: userController.nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Name',
                    hintText: 'Enter Your Name'),
                onChanged: (value) {
                  userController.setName(value);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: TextField(
                  controller: userController.ageController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your age',
                      hintText: 'Enter Age'),
                  onChanged: (value) {
                    userController.setAge(value);
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  userController.calculateYearsTo100();
                },
                child: Text('Calculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
