import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/data/service/ticket_cancel/ticket_cancel.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_charges_responce_model/amendment_charges_responce_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_details_request_model/amendment_details_request_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_details_responce_model/amendment_details_responce_model.dart';
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

  // Pick trips and travlers for cancelling and get amndment charges
  Rx<TicketCancelRequestModel> cancelSelectedItems =
      TicketCancelRequestModel().obs;

  //Amend ment charges responce model
  Rx<AmendmentChargesResponceModel> checkAmendMentCharges =
      AmendmentChargesResponceModel().obs;
  Rx<TicketCancelResponce> ticketCancelResponce = TicketCancelResponce().obs;

  //Amendment Charges after submiting cancel
  RxList<AmendmentDetailsResponceModel?> amendmentDetails =
      <AmendmentDetailsResponceModel>[].obs;

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

  // Trip selection unselection Func
  void toggleTripSelection(Trip trip) {
    cancelSelectedItems.value.trips ??= [];

    if (cancelSelectedItems.value.trips!.contains(trip)) {
      // Remove the trip if it is already in the list
      cancelSelectedItems.update((val) {
        val?.trips?.remove(trip);
      });
    } else {
      // Add the trip if it is not in the list
      cancelSelectedItems.update((val) {
        val?.trips?.add(trip);
      });
    }
    update();
  }

  // for identifying selected or not
  bool isTripSelected(Trip trip) {
    if (cancelSelectedItems.value.trips != null) {
      return cancelSelectedItems.value.trips!.contains(trip);
    }
    return false;
  }

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

  void checkAmendmentDetails() async {
    hasError.value = false;
    isLoading.value = true;
    log('${cancelSelectedItems.value.trips?.toList()}');
    final data = await cancelRepo.submitAmendmentCharges(
        ticketCancelRequestModel: cancelSelectedItems.value);
    data.fold(
      (l) {
        tripJackErrorMessage.value = l.message ?? errorMessage;
        isLoading.value = false;
        hasError.value = true;
        update();
        Get.snackbar('Failure', l.message ?? errorMessage,
            snackPosition: SnackPosition.BOTTOM,
            forwardAnimationCurve: Curves.bounceIn,
            backgroundColor: kRed,
            colorText: kWhite);
      },
      (r) {
        isLoading.value = false;
        hasError.value = false;
        checkAmendMentCharges.value = r;
      },
    );
  }

  void ticketCancel() async {
    hasError.value = false;
    isLoading.value = true;
    final data = await cancelRepo.submitAmendment(
        ticketCancelRequestModel: cancelSelectedItems.value);
    data.fold(
      (l) {
        tripJackErrorMessage.value = l.message ?? errorMessage;
        isLoading.value = false;
        hasError.value = true;
        update();
        Get.snackbar('Failure', l.message ?? errorMessage,
            snackPosition: SnackPosition.BOTTOM,
            forwardAnimationCurve: Curves.bounceIn,
            backgroundColor: kRed,
            colorText: kWhite);
      },
      (r) {
        cancellationRason.clear();
        Get.snackbar('Success', 'Trip Cancellation is in progress',
            snackPosition: SnackPosition.BOTTOM,
            forwardAnimationCurve: Curves.bounceIn,
            backgroundColor: kBluePrimary,
            colorText: kWhite);
        hasError.value = false;
        isLoading.value = false;
        ticketCancelResponce.value = r;
      },
    );
  }

  RxBool nextLoading = false.obs;

  void viewAmendmentDetail(
      {required List<AmendmentDetailsRequestModel>
          amendmentDetailRequestModel}) async {
    hasError.value = false;
    nextLoading.value = true;
    Get.toNamed(Routes.viewAmendmetStatus);
    amendmentDetails.clear();
    for (var element in amendmentDetailRequestModel) {
      final data = await cancelRepo.viewAmendMentDetails(
          amendmentDetailRequestModel: element);
      data.fold(
        (l) {
          hasError.value = true;
          amendmentDetails.add(null);
          // nextLoading.value = false;
        },
        (r) {
          hasError.value = false;
          amendmentDetails.add(r);
        },
      );
    }
    nextLoading.value = false;
  }
}
