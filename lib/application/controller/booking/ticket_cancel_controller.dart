import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/data/service/ticket_cancel/ticket_cancel.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/traveller_info.dart';
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

  final bookingController = Get.find<BookingController>();
  // Function to select a trip
  void selectTripUsingIndex(int tripIndex) {
    final tripInfo = bookingController
        .retrieveSingleBookingresponceModel
        .value
        .retrieveSingleBookingresponceModel
        ?.itemInfos
        ?.air
        ?.tripInfos?[tripIndex];

    // log('select Trip Using Index inside ${tripInfo?.toJson()}');

    final tripConvert = Trip.getTrip(tripInfo);
    cancelSelectedItems.value.trips =
        cancelSelectedItems.value.trips ?? <Trip>[];
    if (cancelSelectedItems.value.trips!.contains(tripConvert)) {
      cancelSelectedItems.value.trips?.remove(tripConvert);
      update();
    } else {
      cancelSelectedItems.value.trips?.add(tripConvert);
      update();
    }
    update(['cancel']);
  }

  // Function to check if a trip is selected
  bool isTripSelected(Trip trip) {
    return cancelSelectedItems.value.trips != null &&
        cancelSelectedItems.value.trips!.contains(trip);
  }

  //Traveller slection
  void travellerChoose(int tripIndex, int travelerIndex) {
    final tripInfo = bookingController
        .retrieveSingleBookingresponceModel
        .value
        .retrieveSingleBookingresponceModel
        ?.itemInfos
        ?.air
        ?.tripInfos?[tripIndex];
    log('trip info inside travellerChoose ${tripInfo?.sI?[0].dt} ${tripInfo?.sI?[0].da?.code} ${tripInfo?.sI?[(tripInfo.sI?.length ?? 1) - 1].aa?.code}');

    final tripConvert = Trip.getTrip(tripInfo);
    final traveler = bookingController
        .retrieveSingleBookingresponceModel
        .value
        .retrieveSingleBookingresponceModel
        ?.itemInfos
        ?.air
        ?.travellerInfos?[travelerIndex];

    if (traveler != null) {
      final travelerConvert = Traveller.getTraveler(traveler);

      // Ensure the trip is in the selected list
      cancelSelectedItems.value.trips ??= [];
      if (!cancelSelectedItems.value.trips!.contains(tripConvert)) {
        cancelSelectedItems.value.trips!.add(tripConvert);
      }

      // Manage selected travelers for the trip
      final existingTrip = cancelSelectedItems.value.trips!
          .firstWhere((t) => t == tripConvert, orElse: () {
        // If trip is not found in the list, create a new one with an empty traveler list
        final newTrip = Trip(
          src: tripConvert.src,
          dest: tripConvert.dest,
          departureDate: tripConvert.departureDate,
        );
        cancelSelectedItems.value.trips!.add(newTrip);
        return newTrip;
      });

      existingTrip.travellers = existingTrip.travellers ?? [];
      if (existingTrip.travellers!.contains(travelerConvert)) {
        existingTrip.travellers!.remove(travelerConvert);
      } else {
        existingTrip.travellers!.add(travelerConvert);
      }

      log('Total selected travelers for trip $tripIndex: ${tripConvert.travellers?.length}');
      update(['cancel']);
    }
  }

  bool isTravelerSelected(int tripIndex, TravellerInfo? traveler) {
    if (traveler == null) return false;

    final tripInfo = bookingController
        .retrieveSingleBookingresponceModel
        .value
        .retrieveSingleBookingresponceModel
        ?.itemInfos
        ?.air
        ?.tripInfos?[tripIndex];

    if (tripInfo == null) return false;

    final tripConvert = Trip.getTrip(tripInfo);

    final existingTrip =
        cancelSelectedItems.value.trips?.firstWhere((t) => t == tripConvert);

    if (existingTrip == null) return false;

    final travelerConvert = Traveller.getTraveler(traveler);

    return existingTrip.travellers?.contains(travelerConvert) ?? false;
  }

  void amendmentCharges() async {
    hasError.value = false;
    isLoading.value = true;
    log('${cancelSelectedItems.value.trips?.toList()}');
    final data = await cancelRepo.amendmentCharges(
        ticketCancelRequestModel: cancelSelectedItems.value);
    data.fold(
      (l) {
        tripJackErrorMessage.value = l.message ?? errorMessage;
        isLoading.value = false;
        hasError.value = true;
        update();
        Get.snackbar(l.message ?? errorMessage, l.subMessage ?? errorMessage,
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
