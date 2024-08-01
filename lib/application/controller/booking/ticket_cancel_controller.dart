import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
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

  // list of selected trips
  RxList<Trip> selectedTrips = <Trip>[].obs;

  // selected passengers in each trip
  Map<Trip, RxList<Traveller>> selectedTravellers =
      <Trip, RxList<Traveller>>{}.obs;

  // Pick trips and travlers for cancelling and get amndment charges
  Rx<TicketCancelRequestModel> cancelSelectedItems =
      TicketCancelRequestModel().obs;

  // trip length and trqaveller length to check while creating model
  int tripLength = 1;
  int travellerLength = 1;

  //Amend ment charges responce model
  Rx<AmendmentChargesResponceModel> checkAmendMentCharges =
      AmendmentChargesResponceModel().obs;

  Rx<TicketCancelResponce> ticketCancelResponce = TicketCancelResponce().obs;

  //Amendment Charges after submiting cancel
  RxList<AmendmentDetailsResponceModel?> amendmentDetails =
      <AmendmentDetailsResponceModel>[].obs;

  final bookingController = Get.find<BookingController>();

  // select and unselect trip form list
  void selectTrip({required Trip trip}) {
    if (selectedTrips.any((t) => t == trip)) {
      selectedTrips.remove(trip);
      selectedTravellers.removeWhere((k, v) => k == trip);
    } else {
      selectedTrips.add(trip);
    }
  }

  // select and unselct passenger
  void selectPassenger({required Trip trip, required Traveller traveller}) {
    print('1');
    if (!selectedTravellers.containsKey(trip)) {
      selectedTrips.add(trip);
      selectedTravellers[trip] = <Traveller>[].obs;
    }
    print('2');
    if (selectedTravellers[trip]!.contains(traveller)) {
      selectedTravellers[trip]!.remove(traveller);
    } else {
      selectedTravellers[trip]!.add(traveller);
    }
    print('3');
    if (selectedTravellers[trip]!.isEmpty) {
      selectedTrips.remove(trip);
      selectedTravellers.removeWhere((k, v) {
        print('trip check => ${k==trip}');
        return k == trip;
      });
    }
    // for (var e in selectedTrips) {
    //   print(e.toJson());
    // }
  }

  // clear variables and take the booking id to the model for new cancelation
  void resetCancelVariables(
      {String? bookingId, int? tripLength, int? travellerLength}) {
    selectedTrips = <Trip>[].obs;
    selectedTravellers = <Trip, RxList<Traveller>>{}.obs;
    cancelSelectedItems = TicketCancelRequestModel(bookingId: bookingId).obs;
    this.tripLength = tripLength ?? 1;
    this.travellerLength = travellerLength ?? 1;
  }

  // make model for cancelation or amandement checking
  makeModel() {
    // cancelSelectedItems.value = cancelSelectedItems.value
    //     .copyWith(remarks: null, trips: null, type: null);
    // bool cancelBooking = true;
    // if (selectedTrips.length == tripLength) {
    //   for (var e in selectedTrips) {
    //     if (selectedTravellers[e]!.length != travellerLength) {
    //       cancelBooking = false;
    //     }
    //   }
    // }
    // // cancel entire booking
    // if (cancelBooking) {
    //   cancelSelectedItems.value = cancelSelectedItems.value
    //       .copyWith(remarks: cancellationRason.text, type: 'CANCELLATION');
    //   return;
    // }
    // // selected trip
    // Create a list of trips with their corresponding travellers
    if (selectedTrips.length == tripLength) {
      bool allTrip = true;
      for (var trip in selectedTravellers.keys) {
        if (selectedTravellers[trip]!.length != travellerLength) {
          allTrip = false;
        }
      }
      if (allTrip) {
        cancelSelectedItems.value = cancelSelectedItems.value.copyWith(
          type: 'CANCELLATION',
          remarks: cancellationRason.text,
          trips: null,
        );
      }
      print(cancelSelectedItems.value.toJson());
      for (var e in cancelSelectedItems.value.trips ?? <Trip>[]) {
        print(e.toJson());
        for (var x in e.travellers ?? <Traveller>[]) {
          print(x.toJson());
        }
      }
      return;
    }
    print('ticket');
    List<Trip> tripsWithTravellers = selectedTravellers.keys.map((trip) {
      List<Traveller>? travellers = selectedTravellers[trip]?.isNotEmpty == true
          ? selectedTravellers[trip]?.toList()
          : null;
      return trip.copyWith(travellers: travellers);
    }).toList();
    cancelSelectedItems.value = cancelSelectedItems.value.copyWith(
      type: 'CANCELLATION',
      remarks: cancellationRason.text,
      trips: tripsWithTravellers.isEmpty ||
              tripsWithTravellers.length == tripLength
          ? null
          : tripsWithTravellers,
    );
    print(cancelSelectedItems.value.toJson());
    for (var e in cancelSelectedItems.value.trips ?? <Trip>[]) {
      print(e.toJson());
      for (var x in e.travellers ?? <Traveller>[]) {
        print(x.toJson());
      }
    }
  }

  void amendmentCharges() async {
    makeModel();
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
    makeModel();
    return;
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
