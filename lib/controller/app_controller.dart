import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt navIndex = 0.obs;

  RxString name = 'MasterUnG'.obs;

  RxInt increateNavIndex() {
    return navIndex++;
  }
}
