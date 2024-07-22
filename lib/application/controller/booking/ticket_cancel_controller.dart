import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/data/service/ticket_cancel/ticket_cancel.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/ticket_cancel_request_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/traveller.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/trip.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_responce/ticket_cancel_responce.dart';
import 'package:myairdeal/domain/repository/service/cancel_repo.dart';

class TIcketCancellaionCntroller extends GetxController {
  CancelRepo cancelRepo = CancelService();
  RxBool isLoading = false.obs;
  RxBool hasError = false.obs;
  RxString tripJackErrorMessage = ''.obs;
  TextEditingController cancellationRason = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxList<TicketCancelRequestModel> selectedItems =
      <TicketCancelRequestModel>[].obs;
  Rx<TicketCancelResponce> ticketData = TicketCancelResponce().obs;

  void addItem(TicketCancelRequestModel item) {
    final existingIndex = selectedItems
        .indexWhere((element) => element.bookingId == item.bookingId);

    if (existingIndex != -1) {
      selectedItems.removeAt(existingIndex);
    } else {
      selectedItems.add(item);
    }
    update();
  }

  var tripCancelErrorMessage = ''.obs;
  var selectedTravelers = <Traveller>[].obs;

  void cancelTicket(String bookingId, String type, List<Trip> trips) async {
    isLoading.value = true;
    hasError.value = false;

    try {
      // Assuming you have a method to perform the actual cancellation request
      ticketCancel(TicketCancelRequestModel(
        bookingId: bookingId,
        type: type,
        trips: trips,
      ));
    } catch (error) {
      tripCancelErrorMessage.value = error.toString();
      hasError.value = true;
    } finally {
      isLoading.value = false;
    }
  }

  void ticketCancel(TicketCancelRequestModel ticketCancelRequestModel) async {
    hasError.value = false;
    isLoading.value = false;
    final data = await cancelRepo.cancelTicket(
        ticketCancelRequestModel: ticketCancelRequestModel);
    data.fold(
      (l) {
        tripJackErrorMessage.value = l.message ?? errorMessage;
        Get.snackbar('Failure', l.message ?? errorMessage,
            snackPosition: SnackPosition.BOTTOM,
            forwardAnimationCurve: Curves.bounceIn,
            backgroundColor: kRed,
            colorText: kWhite);
        isLoading.value = false;
        hasError.value = true;
        update();
      },
      (r) {
        hasError.value = false;
        isLoading.value = false;
        ticketData.value = r;
      },
    );
  }
}
