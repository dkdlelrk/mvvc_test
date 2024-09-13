import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_flutter/controller/controller.dart';
import 'package:mvvm_flutter/view_model/view_model.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewPage'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Obx(
            () => GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: controller.modelList.length,
              itemBuilder: (context, index) {
                return ViewModel(controller.modelList[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
