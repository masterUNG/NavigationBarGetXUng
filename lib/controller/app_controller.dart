import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt navIndex = 0.obs;

  RxInt increateNavIndex() {
    return navIndex++;
  }
}
