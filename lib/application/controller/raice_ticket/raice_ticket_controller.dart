import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/data/features/pdf_generator.dart';
import 'package:myairdeal/data/features/share_ticket.dart';
import 'package:myairdeal/data/features/url_launcher.dart';
import 'package:myairdeal/data/service/raice_ticket/raice_ticket_service.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_tickets_model/tasks.dart';
import 'package:myairdeal/domain/models/ticket_raice/raice_ticket/raice_ticket.dart';
import 'package:myairdeal/domain/repository/service/raice_ticket_repo.dart';
import 'package:pinput/pinput.dart';

class RaiceTicketController extends GetxController {
  // flight service class responsible for api calls
  final RaiceTicketRepo raiceTicketRepo = RaiceTicketService();
  RxBool isLoading = false.obs;
  RxBool invoiceDownLoadLoading = false.obs;
  RxBool ticketLoading = false.obs;
  RxList<Tasks> allTicketsLists = <Tasks>[].obs;

  // Validating for ticket raising
  GlobalKey<FormState> raiceTicketFormKey = GlobalKey<FormState>();
  TextEditingController descriptionController = TextEditingController();

  // in combleted and upcoming tab ticket raising value
  RxString selectedheding = 'New Complaint'.obs;

  List<String> bookingProductdropDwnDatas = [
    'Flights',
    'Air ambulance',
    'Chatered Flights',
    'Helicopter'
  ];

  RxString selectedProduct = 'Flights'.obs;

  RxList<String> youCouldAlsoTexts = ['Contact us', 'Reports', 'Support'].obs;

  // in except cancel tab Choosing for raice ticket, Connection, Refund and Mail
  RxInt selectedYouCouldAlsoTab = 6.obs;

  void changeSelectedYouCouldAlsoTab(int selectedNewTab) {
    selectedYouCouldAlsoTab.value = selectedNewTab;
    if (selectedYouCouldAlsoTab.value == 0) {
      final bookingController = Get.find<BookingController>();
      Timer(
        const Duration(milliseconds: 300),
        () => bookingController.scrollController.animateTo(
            bookingController.scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceIn),
      );
    }
    if (selectedYouCouldAlsoTab.value == 2) {
      OpenLauncherFeature.launchPhone(phone: '7061409421');
    }
    update();
  }

  List<String> contactusRadioItems = [
    'New Complaint',
    'Unresolved Complaint',
    'Write to management',
  ];

  void updateProduct(String newValue) {
    selectedProduct.value = newValue;
    update();
  }

  void headingChange(String heading) {
    selectedheding.value = heading;
    update();
  }

  void createRaiceTicket({required RaiceTicket raiceTicket}) async {
    if (descriptionController.text.isEmpty) {
      return;
    } else if (descriptionController.length < 15) {
      return;
    }
    isLoading.value = true;
    final data =
        await raiceTicketRepo.createRaiceTicket(raiceTicket: raiceTicket);
    data.fold(
      (l) {
        isLoading.value = false;
      },
      (r) {
        isLoading.value = false;
        Get.snackbar('Sucess', 'Ticket Raicing Sucess',
            backgroundColor: kBluePrimary);
        selectedYouCouldAlsoTab.value = 1;
        // getAllRaisedTickets();
      },
    );
  }

  void getAllRaisedTickets({required String createdId}) async {
    isLoading.value = true;
    final data =
        await raiceTicketRepo.getAllRaisedTickets(createdId: createdId);
    data.fold(
      (l) {
        isLoading.value = false;
      },
      (r) {
        log('length ${r.data?.length}');
        isLoading.value = false;
        allTicketsLists.value = r.data ?? [];
      },
    );
  }

  void ivoiceDownLoad({required String bookingID}) async {
    final permission = await takePermission();
    if (!permission) return;
    invoiceDownLoadLoading.value = true;
    final data = await raiceTicketRepo.ivoiceDownLoad(bookingID: bookingID);
    data.fold(
      (l) {
        invoiceDownLoadLoading.value = false;
      },
      (r) {
        if (r.base64String != null) {
          pdfGenerator(r.base64String!);
        }
        invoiceDownLoadLoading.value = false;
      },
    );
  }

  void shareTicket({required String bookingID}) async {
    ticketLoading.value = true;
    final data = await raiceTicketRepo.ivoiceDownLoad(bookingID: bookingID);
    data.fold((l) => null, (r) {
      if (r.base64String != null) {
        sharePdf(r.base64String!, bookingID);
      }
    });
    ticketLoading.value = false;
  }
}
