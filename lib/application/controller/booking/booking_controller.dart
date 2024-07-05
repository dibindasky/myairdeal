import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/data/service/booking/booking_service.dart';
import 'package:myairdeal/domain/models/booking/all_booking_responce/all_booking_responce.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/retrieve_single_bookingresponce_model.dart';
import 'package:myairdeal/domain/repository/service/booking_rep.dart';

class BookingController extends GetxController {
  BookingRepo bookingRepo = BookingService();
  // Booking tab according to status 1- campleted, 2- Cancelled, 3- Upcoming
  RxInt selectedBookingTab = 1.obs;
  // in except cancel tab Choosing for raice ticket, Connection, Refund and Mail
  RxInt selectedYouCouldAlsoTab = 6.obs;
  // in combleted and upcoming tab ticket raising value
  RxInt selectedcontactUsRadioButton = 6.obs;
  RxBool bookingLoading = false.obs;
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

  void getAllUpcomingBooking() async {
    if (retrieveAllUpcomingBooking.isNotEmpty) return;
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

  void getAllCombleteBooking() async {
    if (retrieveAllCompletedBooking.isNotEmpty) return;
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
