import 'package:flutter/material.dart';
import 'package:mvvm_flutter/controller/controller.dart';
import 'package:mvvm_flutter/model/model.dart';

class ViewModel extends StatelessWidget {
  const ViewModel(this.model, {super.key});
  final Model model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            Text('title : ${model.title}'),
            Text('body : ${model.body}'),
          ],
        ),
      ),
    );
  }
}
