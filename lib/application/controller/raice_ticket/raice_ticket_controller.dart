import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/data/features/pdf_generator.dart';
import 'package:myairdeal/data/service/raice_ticket/raice_ticket_service.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_tickets_model/tasks.dart';
import 'package:myairdeal/domain/models/ticket_raice/raice_ticket/raice_ticket.dart';
import 'package:myairdeal/domain/repository/service/raice_ticket_repo.dart';

class RaiceTicketController extends GetxController {
  // flight service class responsible for api calls
  final RaiceTicketRepo raiceTicketRepo = RaiceTicketService();
  RxBool isLoading = false.obs;
  RxBool invoiceDownLoadLoading = false.obs;
  RxList<Tasks> allTickets = <Tasks>[].obs;

  final descriptionController = TextEditingController();

  // in combleted and upcoming tab ticket raising value
  RxString selectedheding = 'New Complaint'.obs;

  List<String> dropDwnDatas = ['Product 1', 'Product 2', 'Product 3'];
  RxString? selectedProduct;

  // in except cancel tab Choosing for raice ticket, Connection, Refund and Mail
  RxInt selectedYouCouldAlsoTab = 6.obs;

  void changeSelectedYouCouldAlsoTab(int selectedNewTab) {
    if (selectedNewTab == 2) {
      Get.toNamed(Routes.chatPage);
    } else if (selectedNewTab == 3) {
      Get.toNamed(Routes.refundsPage);
    }
    selectedYouCouldAlsoTab.value = selectedNewTab;
    update();
  }

  List<String> contactusRadioItems = [
    'New Complaint',
    'Unresolved Complaint',
    'Write to management',
  ];

  void updateProduct(String newValue) {
    selectedProduct?.value = newValue;
    update();
  }

  void headingChange(String heading) {
    selectedheding.value = heading;
    update();
  }

  void addRaiceTicket({required RaiceTicket raiceTicket}) async {
    isLoading.value = true;
    final data = await raiceTicketRepo.raiceTicket(raiceTicket: raiceTicket);
    data.fold(
      (l) {
        isLoading.value = false;
      },
      (r) {
        isLoading.value = false;
        Get.snackbar('Sucess', 'Ticket Raicing Sucess');
        selectedYouCouldAlsoTab.value = 2;
      },
    );
  }

  void getAllRaisedTickets({required String createdId}) async {
    isLoading.value = true;
    final data = await raiceTicketRepo.getraiceTickets(createdId: createdId);
    data.fold(
      (l) {
        isLoading.value = false;
      },
      (r) {
        isLoading.value = false;
        allTickets.value = r.data ?? [];
      },
    );
  }

  void invoiceDOwnload({required String bookingID}) async {
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
}