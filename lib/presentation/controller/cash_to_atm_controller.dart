import 'package:get/get.dart';

class CashToAtmController extends GetxController {
  var selected = '';

  getScanQRSelected() {
    selected = 'Scan QR';
    update();
  }

  getCashToAtmSelected() {
    selected = 'Cash to ATM';
    update();
  }
}
