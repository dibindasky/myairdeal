import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/data/service/raice_ticket/raice_ticket_service.dart';
import 'package:myairdeal/domain/models/booking_ids_model/booking_ids_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/enguiry_model/enguiry_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_global_tickets/get_all_global_tickets.dart';
import 'package:myairdeal/domain/models/ticket_raice/global_ticket_raising_model/global_ticket_raising_model.dart';
import 'package:myairdeal/domain/repository/service/raice_ticket_repo.dart';

class TalkToUsController extends GetxController {
  // flight service class responsible for api calls
  final RaiceTicketRepo raiceTicketRepo = RaiceTicketService();

  int raiceTickets = 0;
  RxBool isLoading = false.obs;
  RxInt selectedGlobalTalkToUsTab = 1.obs;
  GlobalKey<FormState> globalRaiceTicketFormKey = GlobalKey<FormState>();

  // Enquiry Con trollers
  TextEditingController enquiryEmailController = TextEditingController();
  TextEditingController enquiryNameController = TextEditingController();
  TextEditingController enquiryDescriptionController = TextEditingController();
  TextEditingController enquiryNumberController = TextEditingController();
  GlobalKey<FormState> enquiryGlobalKey = GlobalKey<FormState>();

  RxString selecedDailCode = '+91'.obs;

  // Global Ticket raising Controllers
  TextEditingController ticketRisingHeadingController = TextEditingController();
  TextEditingController ticketRisingdescriptionController =
      TextEditingController();
  RxString? selectedEnquiryType;
  RxList enquiryTypeList = ['Air Ambulance', "Helicopter", "Private Jet"].obs;

  //All global tickets
  RxList<GetAllGlobalTickets> globalTickets = <GetAllGlobalTickets>[].obs;

  RxList globalTicketRaisingProducts =
      ['Payment', 'Booking', 'Technical', 'Others'].obs;
  RxString selectedTicketRaisingType = 'Payment'.obs;

  // Booking ids
  RxList<BookingIdsModel> bookingIdList = <BookingIdsModel>[].obs;
  RxString selectedBookingId = ''.obs;

  changeGlobalTalkToUsTab(int newTab) {
    selectedGlobalTalkToUsTab.value = newTab;
    update();
  }

  void changeEnquiryType(String type) {
    selectedEnquiryType = type.obs;
    update();
  }

  void typeChange(String type) {
    selectedTicketRaisingType.value = type;
    update();
  }

  void changeBookingId(String bookingID) {
    selectedBookingId.value = bookingID;
    log(selectedBookingId.value);
    update();
  }

  void globalTicketRaising() async {
    isLoading.value = true;
    GlobalTicketRaisingModel globalTicketRaisingModel =
        GlobalTicketRaisingModel(
            heading: ticketRisingHeadingController.text,
            description: ticketRisingdescriptionController.text,
            type: selectedTicketRaisingType.value,
            bookingId: selectedTicketRaisingType.value == 'Booking'
                ? selectedBookingId.value
                : null,
            product: 'Flight');
    final data = await raiceTicketRepo.globalTicketRaising(
        globalTicketRaisingModel: globalTicketRaisingModel);
    data.fold((l) => null, (r) {
      Get.snackbar('Success', 'Successfully Created Ticket',
          backgroundColor: Get.find<ThemeController>().secondaryColor);
      ticketRisingHeadingController.clear();
      ticketRisingdescriptionController.clear();
      getAllTickets();
    });
    isLoading.value = false;
  }

  void getAllBookingIds() async {
    final data = await raiceTicketRepo.getAllBookingIDs();
    data.fold(
      (l) => null,
      (r) {
        bookingIdList.value = r;
        update();
      },
    );
  }

  void getAllTickets() async {
    final data = await raiceTicketRepo.getGlobalTickets(page: raiceTickets);
    data.fold(
      (l) => null,
      (r) {
        globalTickets.value = r;
      },
    );
  }

  void getnextTickets() async {
    final data = await raiceTicketRepo.getGlobalTickets(page: raiceTickets);
    data.fold(
      (l) => null,
      (r) {
        globalTickets.value = r;
      },
    );
  }

  void addEnquiry({bool fromHome = true}) async {
    isLoading.value = true;
    EnguiryModel enquiryModel = EnguiryModel(
        description: enquiryDescriptionController.text,
        dialCode: selecedDailCode.value,
        email: enquiryEmailController.text,
        phone: enquiryNumberController.text,
        type: selectedEnquiryType?.value);
    if (Get.find<AuthController>().loginOrNot.value) {
      final date = await raiceTicketRepo.addEnquiry(enquiryModel: enquiryModel);
      date.fold(
        (l) => null,
        (r) {
          Get.snackbar('Success', r.message ?? 'Enquiry Created Successfully',
              backgroundColor: Get.find<ThemeController>().secondaryColor);
          enquiryDescriptionController.clear();
          getAllTickets();
          if (fromHome) {
            Get.toNamed(Routes.chatTab);
          } else {
            selectedGlobalTalkToUsTab.value = 2;
            update();
          }
        },
      );
    } else {
      final date = await raiceTicketRepo.addEnquiryUnRegistered(
          enquiryModel: enquiryModel);
      date.fold(
        (l) => null,
        (r) {
          Get.back();
          Get.snackbar('Success', r.message ?? 'Enquiry Created Successfully',
              backgroundColor: Get.find<ThemeController>().secondaryColor);
          enquiryDescriptionController.clear();
          enquiryDescriptionController.text = '';
          enquiryEmailController.text = '';
          enquiryNumberController.text = '';
        },
      );
    }
    isLoading.value = false;
  }
}
