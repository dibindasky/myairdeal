import 'package:get/get.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';

class RaiceTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RaiceTicketController>(RaiceTicketController(), permanent: true);
  }
}
