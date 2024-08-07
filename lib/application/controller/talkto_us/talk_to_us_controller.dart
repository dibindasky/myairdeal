import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/data/service/raice_ticket/raice_ticket_service.dart';
import 'package:myairdeal/domain/models/booking_ids_model/booking_ids_model.dart';
import 'package:myairdeal/domain/models/page_query/page_query.dart';
import 'package:myairdeal/domain/models/ticket_raice/enguiry_model/enguiry_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_global_tickets/get_all_global_tickets.dart';
import 'package:myairdeal/domain/models/ticket_raice/global_ticket_raising_model/global_ticket_raising_model.dart';
import 'package:myairdeal/domain/repository/service/raice_ticket_repo.dart';

class TalkToUsController extends GetxController {
  // flight service class responsible for api calls
  final RaiceTicketRepo raiceTicketRepo = RaiceTicketService();

  RxInt raicetickets = 0.obs;
  RxBool isLoading = false.obs;
  RxInt selectedtab = 1.obs;
  GlobalKey<FormState> globalRaiceTicketFormKey = GlobalKey<FormState>();

  // Enquiry Con trollers
  TextEditingController enquiryEmailController = TextEditingController();
  TextEditingController enquiryNameController = TextEditingController();
  TextEditingController enquiryDescriptionController = TextEditingController();
  TextEditingController enquiryNumberController = TextEditingController();
  GlobalKey<FormState> enquiryGlobalKey = GlobalKey<FormState>();

  RxString selecedDailCode = '+91'.obs;

  // Global Ticket raising Controllers
  TextEditingController headingController = TextEditingController();
  TextEditingController ticketRisingdescriptionController =
      TextEditingController();
  RxString selectedEnquiryType = 'Air Ambulance'.obs;
  RxList enquiryTypeList = ["Air Ambulance", "Helicopter", "Private Jet"].obs;

  //All global tickets
  RxList<GetAllGlobalTickets> globalTickets = <GetAllGlobalTickets>[].obs;

  RxList globalTicketRaisingProducts =
      ['Booking', 'Technical', 'Others', 'Payment'].obs;
  RxString selectedTicketRaisingType = 'Booking'.obs;

  // Booking ids
  RxList<BookingIdsModel> bookingIdList = <BookingIdsModel>[].obs;
  RxString? selectedBookingId;

  changetab(int newTab) {
    selectedtab.value = newTab;
    update();
  }

  void changeEnquiryType(String type) {
    selectedEnquiryType.value = type;
    update();
  }

  void typeChange(String type) {
    selectedTicketRaisingType.value = type;
    update();
  }

  void changeBookingId(String bookingID) {
    selectedBookingId?.value = bookingID;
    update();
  }

  void globalTicketRaising() async {
    isLoading.value = true;
    GlobalTicketRaisingModel globalTicketRaisingModel =
        GlobalTicketRaisingModel(
            heading: headingController.text,
            description: ticketRisingdescriptionController.text,
            type: selectedTicketRaisingType.value,
            bookingId: selectedTicketRaisingType.value == 'Booking'
                ? selectedBookingId?.value
                : null,
            product: 'Flight');
    final data = await raiceTicketRepo.globalTicketRaising(
        globalTicketRaisingModel: globalTicketRaisingModel);
    data.fold((l) => null, (r) {
      Get.snackbar('Success', 'Successfully Created Ticket',
          backgroundColor: kBluePrimary);
      headingController.clear();
      ticketRisingdescriptionController.clear();
      getAllTickets();
    });
    isLoading.value = false;
  }

  void getAllBookingIds() async {
    final data = await raiceTicketRepo.getAllBookingIDs();
    data.fold(
      (l) => null,
      (r) {
        bookingIdList.value = r;
        update();
      },
    );
  }

  void getAllTickets() async {
    final data = await raiceTicketRepo.getGlobalTickets(
        page: PageQuery(pageSize: raicetickets.value));
    data.fold(
      (l) => null,
      (r) {
        globalTickets.value = r;
      },
    );
  }

  void getnextTickets() async {
    final data = await raiceTicketRepo.getGlobalTickets(
        page: PageQuery(pageSize: raicetickets.value += raicetickets.value));
    data.fold(
      (l) => null,
      (r) {
        globalTickets.value = r;
      },
    );
  }

  void addEnquiry() async {
    if (enquiryDescriptionController.text.isEmpty ||
        selecedDailCode.value.isEmpty ||
        enquiryEmailController.text.isEmpty ||
        enquiryNumberController.text.isEmpty ||
        selectedEnquiryType.value.isEmpty) {
      Get.snackbar('Failed', 'Fill the Missing Feilds', backgroundColor: kRed);
      return;
    }
    isLoading.value = true;
    EnguiryModel enquiryModel = EnguiryModel(
      description: enquiryDescriptionController.text,
      dialCode: selecedDailCode.value,
      email: enquiryEmailController.text,
      phone: enquiryNumberController.text,
      type: selectedEnquiryType.value,
    );
    final date = await raiceTicketRepo.addEnquiry(enquiryModel: enquiryModel);
    date.fold(
      (l) => null,
      (r) {
        Get.snackbar('Success', 'Enquiry Created Successfully',
            backgroundColor: kBluePrimary);
        enquiryDescriptionController.clear();
      },
    );
    isLoading.value = false;
  }
}
