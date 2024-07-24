import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';

class TicketCancellationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TicketCancellationController>(
        () => TicketCancellationController());
  }
}
