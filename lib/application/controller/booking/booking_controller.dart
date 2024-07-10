import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/data/service/booking/booking_service.dart';
import 'package:myairdeal/domain/models/booking/all_booking_responce/all_booking_responce.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/book_ticket_model.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/retrieve_single_bookingresponce_model.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/review_flight_detail_price.dart';
import 'package:myairdeal/domain/models/booking/review_price_detail_id_model/review_price_detail_id_model.dart';
import 'package:myairdeal/domain/repository/service/booking_rep.dart';

class BookingController extends GetxController {
  BookingRepo bookingRepo = BookingService();

  // loading for review pice for booking
  RxBool reviewPriceLoading = false.obs;

  String travelerTab = 'Add Details';
  List<String> detailList = [' Itinerary', 'Add Details', 'Review', 'Payments'];

  // variable used for
  Rx<ReviewFlightDetailPrice>? reviewedDetail;

  // Booking tab according to status 1- campleted, 2- Cancelled, 3- Upcoming
  RxInt selectedBookingTab = 1.obs;

  // in except cancel tab Choosing for raice ticket, Connection, Refund and Mail
  RxInt selectedYouCouldAlsoTab = 6.obs;

  // in combleted and upcoming tab ticket raising value
  RxInt selectedcontactUsRadioButton = 6.obs;

  RxBool bookingLoading = false.obs;

  // timer for booking
  Rx<Timer> timer = Timer(const Duration(seconds: 1), () {}).obs;
  // remaining time
  RxInt remainingTime = 900.obs;

  // booking completion loading
  RxBool bookingCompleteLoading = false.obs;
  RxBool bookingCompleteSuccess = false.obs;
  RxBool bookingCompleteFailure = false.obs;

  // Retrive sinle booking model
  Rx<RetrieveSingleBookingresponceModel> retrieveSingleBookingresponceModel =
      RetrieveSingleBookingresponceModel().obs;

  // Retrieve all booking
  RxList<AllBookingResponce> retrieveAllUpcomingBooking =
      <AllBookingResponce>[].obs;
  RxList<AllBookingResponce> retrieveAllCancelBooking =
      <AllBookingResponce>[].obs;
  RxList<AllBookingResponce> retrieveAllCompletedBooking =
      <AllBookingResponce>[].obs;

  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  String? fileName;
  final descriptionController = TextEditingController();
  String? selectedProduct;

  List<String> contactusRadioItems = [
    '1. New Complaint',
    '2. Unresolved Complaint',
    '3. Write to management',
  ];

  List<String> dropDwnDatas = ['Product 1', 'Product 2', 'Product 3'];

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
        timer.cancel();
        Get.back(id: 1);
        Get.until((route) => Get.currentRoute == Routes.bottomBar);
        Get.dialog(AlertDialog(
          backgroundColor: kRedLight,
          title: const Text('Session expired'),
          content: const Text(
              'Your session time has been expired. You have to complete booking before the timer ends.'),
        ));
        // Get.snackbar('Session has been expired',
        //     'Your session time has been expired you have to complete booking before the timer ends',
        //     backgroundColor: kRed, colorText: kWhite);
      } else {
        remainingTime.value--;
      }
    });
  }

  // end timer
  void endTimer() {
    timer.value.cancel();
  }

  // complete booking api calling
  void completeBooking(BookTicketModel bookTicketModel) async {
    bookingCompleteLoading.value = true;
    endTimer();
    final result =
        await bookingRepo.bookTicket(bookTicketModel: bookTicketModel);
    result.fold((l) {
      bookingCompleteFailure.value = true;
    }, (r) {
      bookingCompleteSuccess.value = true;
    });
    Get.back(id: 1);
    bookingCompleteLoading.value = false;
    Get.until((route) => Get.currentRoute == Routes.bottomBar);
    if (bookingCompleteSuccess.value) {
      Get.snackbar('Booking done successfully',
          'Your booking has been successfully placed',
          snackPosition: SnackPosition.TOP,
          backgroundColor: kGreen,
          colorText: kWhite);
    } else {
      Get.snackbar('Booking Failed', 'FAiled to book your ticket',
          snackPosition: SnackPosition.TOP,
          backgroundColor: kRed,
          colorText: kWhite);
    }
  }

  // review price details before going to the booking section
  void reviewPriceDetailChecking(
      {required ReviewPriceDetailIdModel reviewPriceDetailIdModel}) async {
    bool start = false;
    Get.toNamed(Routes.flightDetailFillling);
    reviewedDetail = null;
    reviewPriceLoading.value = true;
    final result = await bookingRepo.reviewPriceDetails(
        reviewPriceDetailIdModel: reviewPriceDetailIdModel);
    result.fold((l) => Get.back(), (r) {
      start = true;
      reviewedDetail = r.obs;
    });
    reviewPriceLoading.value = false;
    if (start) {
      startTimer();
    }
  }

  // Get Single Booking
  void getSingleBooking({
    required RetrieveSingleBookingRequestModel
        retrieveSingleBookingRequestModel,
  }) async {
    bookingLoading.value = true;
    update();
    final data = await bookingRepo.retrieveSinglleBooking(
        retrieveSingleBookingRequestModel: retrieveSingleBookingRequestModel);
    data.fold((l) {
      bookingLoading.value = false;
      update();
    }, (r) {
      retrieveSingleBookingresponceModel.value = r;
      bookingLoading.value = false;
      update();
    });
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

  void changeSelectedYouCouldAlsoTab(int selectedNewTab) {
    if (selectedNewTab == 2) {
      Get.toNamed(Routes.chatPage);
    } else if (selectedNewTab == 3) {
      Get.toNamed(Routes.refundsPage);
    }
    selectedYouCouldAlsoTab.value = selectedNewTab;
    update();
  }

  void changeContactUsRadioButton(int index) {
    selectedcontactUsRadioButton.value = index;
    update();
  }

  void updateProduct(String newValue) {
    selectedProduct = newValue;
    update();
  }
}
