//Take a list, say for example this one:
//  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
//
// and write a program that prints out all the elements of the list that are less than 5.
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view_model_ex3.dart';

class Exercise3 extends StatelessWidget {
  final ViewModelExercise3 viewModel = Get.put(ViewModelExercise3());

  Exercise3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exercise 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Original List: ${viewModel.myList}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                viewModel.showResultSnackbar();
              },
              child: Text('Get Elements < 5'),
            ),
          ],
        ),
      ),
    );
  }
}

// class Exercise3 extends StatelessWidget {
//   final ViewModelExercise3 viewModel = Get.put(ViewModelExercise3());
//   final TextEditingController inputController = TextEditingController();
//
//   Exercise3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Exercise 3'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextField(
//               controller: inputController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter a comma-separated list of integers',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 viewModel.setListFromString(inputController.text);
//                 viewModel.showResultSnackbar();
//               },
//               child: Text('Get Elements < 5'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
