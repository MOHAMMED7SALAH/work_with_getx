import 'package:get/get.dart';

class ObxController extends GetxController {
  RxInt counter = 0.obs;

  void increasment() {
    counter++;
  }

  void decreasment() {
    if (counter <= 0) {
      return;
    }
    counter--;
  }
}
