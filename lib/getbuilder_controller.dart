import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  int counter = 0;

  void increasment() {
    counter++;
    update();
  }

  void decreasment() {
    if (counter <= 0) {
      return;
    }
    counter--;
    update();
  }
}
