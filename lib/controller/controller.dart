import 'package:get/get.dart';
import 'package:mvvm_flutter/data/services.dart';
import 'package:mvvm_flutter/model/model.dart';

class Controller extends GetxController {
  var modelList = <Model>[].obs;

  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    var model = await Services.fetchData();
    if (model != null) {
      modelList.value = model;
    }
  }
}
