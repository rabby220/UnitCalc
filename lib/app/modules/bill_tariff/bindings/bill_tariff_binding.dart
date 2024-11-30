import 'package:get/get.dart';

import '../controllers/bill_tariff_controller.dart';

class BillTariffBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BillTariffController>(
      () => BillTariffController(),
    );
  }
}
