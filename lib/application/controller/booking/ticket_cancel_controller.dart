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

class TicketCancellationController extends GetxController {
  CancelRepo cancelRepo = CancelService();
  RxBool isLoading = false.obs;
  RxBool hasError = false.obs;
  RxString tripJackErrorMessage = ''.obs;
  TextEditingController cancellationRason = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Rx<TicketCancelRequestModel> cancelSelectedItems =
      TicketCancelRequestModel().obs;
  Rx<TicketCancelResponce> ticketData = TicketCancelResponce().obs;

  void addTraveler(Trip trip, Traveller traveler) {
    int tripIndex = cancelSelectedItems.value.trips?.indexWhere(
            (existingTrip) =>
                existingTrip.src == trip.src &&
                existingTrip.dest == trip.dest &&
                existingTrip.departureDate == trip.departureDate) ??
        -1;

    if (tripIndex == -1) {
      trip.travellers = [traveler];
      cancelSelectedItems.value.trips ??= [];
      cancelSelectedItems.value.trips!.add(trip);
    } else {
      cancelSelectedItems.value.trips![tripIndex].travellers ??= [];
      cancelSelectedItems.value.trips![tripIndex].travellers!.add(traveler);
    }

    update();
  }

  //
  void toggleTripSelection(Trip trip) {
    if (cancelSelectedItems.value.trips!.contains(trip)) {
      cancelSelectedItems.update((val) {
        val?.trips?.remove(trip);
      });
      update();
    } else {
      cancelSelectedItems.update((val) {
        val?.trips?.add(trip);
      });
      update();
    }
  }

  bool isTripSelected(Trip trip) {
    if (cancelSelectedItems.value.trips != null) {
      return cancelSelectedItems.value.trips!.contains(trip);
    }
    return false;
  }

  // void removeTraveler(Trip trip, Traveller traveler) {
  //   int tripIndex = cancelSelectedItems.value.trips?.indexWhere(
  //           (existingTrip) =>
  //               existingTrip.src == trip.src &&
  //               existingTrip.dest == trip.dest &&
  //               existingTrip.departureDate == trip.departureDate) ??
  //       -1;

  //   if (tripIndex != -1) {
  //     cancelSelectedItems.value.trips![tripIndex].travellers?.removeWhere(
  //         (existingTraveler) =>
  //             existingTraveler.fn == traveler.fn &&
  //             existingTraveler.ln == traveler.ln);

  //     if (cancelSelectedItems.value.trips![tripIndex].travellers?.isEmpty ??
  //         true) {
  //       cancelSelectedItems.value.trips!.removeAt(tripIndex);
  //     }
  //   }

  //   update();
  // }

  bool isTravelerSelected(Trip trip, Traveller traveler) {
    int tripIndex = cancelSelectedItems.value.trips?.indexWhere(
            (existingTrip) =>
                existingTrip.src == trip.src &&
                existingTrip.dest == trip.dest &&
                existingTrip.departureDate == trip.departureDate) ??
        -1;

    if (tripIndex == -1) return false;

    return cancelSelectedItems.value.trips![tripIndex].travellers?.any(
            (existingTraveler) =>
                existingTraveler.fn == traveler.fn &&
                existingTraveler.ln == traveler.ln) ??
        false;
  }

  var tripCancelErrorMessage = ''.obs;
  var selectedTravelers = <Traveller>[].obs;

  void ticketCancel() async {
    hasError.value = false;
    isLoading.value = false;

    final data = await cancelRepo.cancelTicket(
        ticketCancelRequestModel: cancelSelectedItems.value);
    data.fold(
      (l) {
        tripJackErrorMessage.value = l.message ?? errorMessage;
        isLoading.value = false;
        hasError.value = true;
        cancellationRason.clear();
        update();
        Get.snackbar('Failure', l.message ?? errorMessage,
            snackPosition: SnackPosition.BOTTOM,
            forwardAnimationCurve: Curves.bounceIn,
            backgroundColor: kRed,
            colorText: kWhite);
      },
      (r) {
        cancellationRason.clear();
        hasError.value = false;
        isLoading.value = false;
        ticketData.value = r;
      },
    );
  }
}
