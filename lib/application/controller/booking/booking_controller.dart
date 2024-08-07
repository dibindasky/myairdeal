import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/data/service/booking/booking_service.dart';
import 'package:myairdeal/domain/models/booking/all_booking_responce/all_booking_responce.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/book_ticket_model.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/get_single_booking.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/traveller_info.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/review_flight_detail_price.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/trip_info.dart';
import 'package:myairdeal/domain/models/booking/review_price_detail_id_model/review_price_detail_id_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/ticket_cancel_request_model.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_request/fare_rule_request.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_responce/cancellation.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_responce/datechange.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_responce/fare_rule_responce.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_responce/fare_rule_section.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_responce/no_show.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_responce/seat_chargeable.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';
import 'package:myairdeal/domain/repository/service/booking_rep.dart';

class BookingController extends GetxController {
  BookingRepo bookingRepo = BookingService();
  //Controller for page comes bottom
  final ScrollController scrollController = ScrollController();

  // loading for review pice for booking
  RxBool reviewPriceLoading = false.obs;

  String travelerTab = 'Add Details';
  List<String> detailList = [' Itinerary', 'Add Details', 'Review', 'Payments'];

  // variable used for
  Rx<ReviewFlightDetailPrice>? reviewedDetail;

  // Booking tab according to status 1- campleted, 2- Cancelled, 3- Upcoming
  RxInt selectedBookingTab = 0.obs;
  RxBool bookingLoading = false.obs;
  RxBool invoiceLoading = false.obs;
  RxBool fareRuleLoading = false.obs;

  // timer for booking
  Rx<Timer> timer = Timer(const Duration(seconds: 1), () {}).obs;
  // remaining time
  RxInt remainingTime = 900.obs;

  // booking completion loading
  RxBool bookingCompleteLoading = false.obs;
  RxBool bookingCompleteSuccess = false.obs;
  RxBool bookingCompleteFailure = false.obs;

  // Retrive single booking model
  Rx<GetSingleBooking> retrieveSingleBookingresponceModel =
      GetSingleBooking().obs;

  // Retrieve all booking
  RxList<AllBookingResponce> retrieveAllUpcomingBooking =
      <AllBookingResponce>[].obs;
  RxList<AllBookingResponce> retrieveAllCancelBooking =
      <AllBookingResponce>[].obs;
  RxList<AllBookingResponce> retrieveAllCompletedBooking =
      <AllBookingResponce>[].obs;

  // Ticket cancel request model
  Rx<TicketCancelRequestModel> ticketCancelRequestModel =
      TicketCancelRequestModel().obs;

  //Selected travelers List
  RxList<TravellerInfo> selectedTravelers = <TravellerInfo>[].obs;

  // FareRule Information
  Rx<FareRuleResponce> fareRule = FareRuleResponce().obs;
  Rx<FareRuleSection> fareRuleSection = FareRuleSection().obs;

  // fare rule keys list
  RxList<String> fareRuleKeysList = <String>[].obs;

  /// Fare rule based on the key means [fareRuleKeysList]
  void getFareRule({required FareRuleRequest fareRuleRequest}) async {
    fareRuleLoading.value = true;
    fareRuleKeysList.value = [];
    final data =
        await bookingRepo.getFareRule(fareRuleRequest: fareRuleRequest);
    data.fold(
      (l) => null,
      (r) {
        FareRuleSection? ruleSection = FareRuleSection();
        fareRuleKeysList.value = r.fareRule?.keys.toList() ?? <String>[];
        for (var element in fareRuleKeysList) {
          ruleSection = FareRuleSection.fromJson(
              r.fareRule?[element] ?? <String, dynamic>{});
        }
        fareRuleSection.value = ruleSection ?? FareRuleSection();
        //log('noShow ${fareRuleSection.value.tfr?.noShow?.toList()}');
        for (var element in fareRuleSection.value.tfr?.noShow ?? <NoShow>[]) {
          log('No show ${element.et}');
        }
        for (var element
            in fareRuleSection.value.tfr?.cancellation ?? <Cancellation>[]) {
          log('No Cancellation ${element.et}');
        }
        for (var element
            in fareRuleSection.value.tfr?.datechange ?? <Datechange>[]) {
          log('No Datechange ${element.et}');
        }
        for (var element in fareRuleSection.value.tfr?.seatChargeable ??
            <SeatChargeable>[]) {
          log('No SeatChargeable ${element.et}');
        }
        Get.toNamed(Routes.fareRule);
      },
    );
    fareRuleLoading.value = false;
  }

  // Arrow Change In itinrery screen for tax and Taes
  RxBool selectedArrowItinerary = false.obs;
  void changeArrowItinerary() {
    selectedArrowItinerary.value = !selectedArrowItinerary.value;
    update();
  }

  /// uncoment [startTimer] after complete meals,seat and baggage
  // start timer for booking section
  void startTimer() {
    timer.value.cancel();
    final DateTime currentTime = DateTime.now();
    final Duration elapsedTime = currentTime.difference(
        DateTime.parse(reviewedDetail?.value.conditions?.sct ?? ''));
    final int elapsedSeconds = elapsedTime.inSeconds;
    remainingTime.value =
        (reviewedDetail?.value.conditions?.st ?? 900 - elapsedSeconds)
            .clamp(0, 900);
    timer.value = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime.value == 0) {
        bool showDialog = false;
        if (Get.currentRoute != Routes.bottomBar) showDialog = true;
        Get.until((route) => Get.currentRoute == Routes.bottomBar);
        if (showDialog) {
          Get.dialog(
            AlertDialog(
              backgroundColor: kRedLight,
              title: const Text('Session expired'),
              content: const Text(
                  'Your session time has been expired. You have to complete booking before the timer ends.'),
            ),
          );
        }
        timer.cancel();
      } else {
        remainingTime.value--;
      }
    });
  }

  void clear() {
    retrieveAllUpcomingBooking.clear();
    retrieveAllCompletedBooking.clear();
    retrieveAllCancelBooking.clear();
  }

  // end timer
  void endTimer() {
    timer.value.cancel();
    remainingTime.value = 0;
  }

  // complete booking api calling
  void completeBooking(BookTicketModel bookTicketModel) async {
    Get.toNamed(Routes.paymentSucess);
    bookingCompleteLoading.value = true;
    bookingCompleteSuccess = false.obs;
    bookingCompleteFailure = false.obs;
    String message = '';
    String bookingId = '';
    endTimer();
    print('book ticket model ');
    print(bookTicketModel.toString());
    final result =
        await bookingRepo.bookTicket(bookTicketModel: bookTicketModel);
    result.fold((l) {
      bookingCompleteFailure.value = true;
      print('failure');
      print(l.message);
      message = l.message ?? errorMessage;
    }, (r) {
      bookingCompleteSuccess.value = true;
      bookingId = r.bookingId ?? '';
      print('success');
      if (r.errors != null && r.errors!.isNotEmpty) {
        print(r.errors?[0].message ?? errorMessage);
        message = r.errors?[0].message ?? errorMessage;
      }
      Get.find<FlightSortController>().clearDataAfterBooking();
    });
    bookingCompleteLoading.value = false;
    if (bookingCompleteSuccess.value) {
      invoiceLoading.value = true;
      if (Get.find<FlightSortController>().remainingTime.value != 0) {
        Get.back(id: 1);
      }
      Get.until((route) => Get.currentRoute == Routes.bottomBar);
      Get.toNamed(Routes.paymentSucess);
      Get.snackbar('Booking done successfully',
          'Your booking has been successfully placed',
          snackPosition: SnackPosition.TOP,
          backgroundColor: kGreen,
          colorText: kWhite);
      // timer to wait until the data has been saved in the server and calling for booked ticket
      Timer(const Duration(seconds: 3), () {
        getSingleBooking(
            retrieveSingleBookingRequestModel:
                RetrieveSingleBookingRequestModel(bookingId: bookingId),
            callBookings: true);
      });
    } else {
      Get.back();
      Get.snackbar(
        'Booking Failed',
        message,
        snackPosition: SnackPosition.TOP,
        forwardAnimationCurve: Curves.bounceIn,
        backgroundColor: kRed,
        colorText: kWhite,
      );
    }
  }

  // review price details before going to the booking section
  void reviewPriceDetailChecking(
      {required ReviewPriceDetailIdModel reviewPriceDetailIdModel}) async {
    print('price id for search ${reviewPriceDetailIdModel.priceIds}');
    endTimer();
    bool start = false;
    Get.toNamed(Routes.flightDetailFillling);
    reviewedDetail = null;
    reviewPriceLoading.value = true;
    final result = await bookingRepo.reviewPriceDetails(
        reviewPriceDetailIdModel: reviewPriceDetailIdModel);
    result.fold((l) {
      Get.back();
      Get.snackbar('Failed to load data', l.message ?? errorMessage,
          snackPosition: SnackPosition.BOTTOM,
          forwardAnimationCurve: Curves.bounceIn,
          backgroundColor: kRed,
          colorText: kWhite);
    }, (r) {
      start = true;
      reviewedDetail = r.obs;
    });
    reviewPriceLoading.value = false;
    if (start) {
      startTimer();
      Get.find<TravellerController>()
          .getSeatsAvailable(bookingId: reviewedDetail?.value.bookingId ?? '');
    }
  }

  // get the total price by calculating the price seperate for all types
  double getPrice(String type) {
    double price = 0.0;
    for (var element in reviewedDetail!.value.tripInfos!) {
      if (type == 'ADULT') {
        price += element.totalPriceList?[0].fd?.adult?.fC?.bf ?? 00;
      } else if (type == 'CHILD') {
        price += element.totalPriceList?[0].fd?.child?.fC?.bf ?? 00;
      } else if (type == 'INFANT') {
        price += element.totalPriceList?[0].fd?.infant?.fC?.bf ?? 00;
      }
    }
    return price;
  }

  // get Segment info using flight id
  SI? getSegmentInfoUsingId(String id) {
    for (var trip in reviewedDetail?.value.tripInfos ?? <TripInfo>[]) {
      for (var si in trip.sI ?? <SI>[]) {
        if (si.id == id) {
          return si;
        }
      }
    }
    return null;
  }

  // clear all the data after booking to not affect the next booking
  void clearDataAfterBooking() {
    travelerTab = 'Add Details';
    remainingTime = 0.obs;
  }

  // Get Single Booking
  void getSingleBooking(
      {required RetrieveSingleBookingRequestModel
          retrieveSingleBookingRequestModel,
      bool callBookings = false}) async {
    invoiceLoading.value = true;
    update();
    final data = await bookingRepo.retrieveSingleBooking(
        retrieveSingleBookingRequestModel: retrieveSingleBookingRequestModel);
    data.fold((l) {
      invoiceLoading.value = false;
      update();
    }, (r) {
      retrieveSingleBookingresponceModel.value = r;
      invoiceLoading.value = false;
      update();
    });
    if (callBookings) {
      getAllUpcomingBooking(true);
    }
  }

  void getAllUpcomingBooking(bool isLoad) async {
    if (retrieveAllUpcomingBooking.isNotEmpty && !isLoad) return;
    bookingLoading.value = true;
    update();
    final data = await bookingRepo.retrieveUpComimgBooking();
    data.fold((l) {
      bookingLoading.value = false;
      update();
    }, (r) {
      retrieveAllUpcomingBooking.value = r;
      bookingLoading.value = false;
      update();
    });
  }

  void getAllCancelBooking() async {
    if (retrieveAllCancelBooking.isNotEmpty) return;
    bookingLoading.value = true;
    update();
    final data = await bookingRepo.retrieveCancelledBooking();
    data.fold((l) {
      bookingLoading.value = false;
      update();
    }, (r) {
      retrieveAllCancelBooking.value = r;
      bookingLoading.value = false;
      update();
    });
  }

  void getAllCombleteBooking(bool isLoad) async {
    if (retrieveAllCompletedBooking.isNotEmpty && !isLoad) return;
    bookingLoading.value = true;
    update();
    final data = await bookingRepo.retrieveCombletedBooking();
    data.fold((l) {
      bookingLoading.value = false;
      update();
    }, (r) {
      retrieveAllCompletedBooking.value = r;
      bookingLoading.value = false;
      update();
    });
  }

  void changeTab(int index) {
    selectedBookingTab.value = index;
    update();
  }
}
