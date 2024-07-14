import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class BookingProductdropoDownBuilder extends StatelessWidget {
  BookingProductdropoDownBuilder({super.key});

  final raiceTicketController = Get.find<RaiceTicketController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight5,
        const Text('Select Product'),
        kHeight10,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: kBlack, width: .3),
          ),
          height: 42.h,
          child: GetBuilder<RaiceTicketController>(builder: (controller) {
            return DropdownButton<String>(
              dropdownColor: kGreyLightBackground,
              isExpanded: true,
              value: raiceTicketController.selectedProduct?.value,
              hint: const Text('Choose one'),
              items: raiceTicketController.dropDwnDatas.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                raiceTicketController.updateProduct(newValue ?? '');
              },
            );
          }),
        ),
        kHeight10
      ],
    );
  }
}
