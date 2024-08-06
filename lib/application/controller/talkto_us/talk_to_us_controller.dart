import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/data/service/raice_ticket/raice_ticket_service.dart';
import 'package:myairdeal/domain/models/ticket_raice/global_ticket_raising_model/global_ticket_raising_model.dart';
import 'package:myairdeal/domain/repository/service/raice_ticket_repo.dart';

class TalkToUsController extends GetxController {
  // flight service class responsible for api calls
  final RaiceTicketRepo raiceTicketRepo = RaiceTicketService();
  RxBool isLoading = false.obs;
  RxInt selectedtab = 1.obs;
  GlobalKey<FormState> globalRaiceTicketFormKey = GlobalKey<FormState>();
  TextEditingController headingController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  RxList globalTicketRaisingProducts =
      ['Booking', 'Technical', 'Others', 'Payment'].obs;
  RxString selectedTicketRaisingType = 'Booking Issue'.obs;

  RxList<String> bookingIdList =
      ['RST72365724658', 'FDTF3764533', 'TDD872369457', 'YTR764591364'].obs;
  RxString selectedBookingId = 'RST72365724658'.obs;
  changetab(int newTab) {
    selectedtab.value = newTab;
    update();
  }

  void typeChange(String type) {
    selectedTicketRaisingType.value = type;
    update();
  }

  void changeBookingId(String bookingID) {
    selectedBookingId.value = bookingID;
    update();
  }

  void globalTicketRaising() async {
    isLoading.value = true;
    GlobalTicketRaisingModel globalTicketRaisingModel =
        GlobalTicketRaisingModel(
            heading: headingController.text,
            description: descriptionController.text,
            type: selectedTicketRaisingType.value,
            product: 'Flight');
    final data = await raiceTicketRepo.globalTicketRaising(
        globalTicketRaisingModel: globalTicketRaisingModel);
    data.fold((l) => null, (r) {
      Get.snackbar('Success', 'Successfully created');
    });
    isLoading.value = false;
  }
}
