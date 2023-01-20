import 'package:get/get.dart';

class Utils {
  showSnackBar(String text) {
    Get.snackbar('Hey', text, duration: Duration(seconds: 5));
  }
}
