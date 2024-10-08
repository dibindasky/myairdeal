import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class NationalityCodeDropDown extends StatelessWidget {
  NationalityCodeDropDown({super.key});

  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TravellerController>(builder: (controller) {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: kRadius15,
            border: Border.all(color: kBlack.withOpacity(.3))),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            buttonStyleData: ButtonStyleData(
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: kRadius15,
              ),
              elevation: 0,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 40,
              width: 0,
            ),
            hint:
                Text('Country Code', style: textStyle1.copyWith(color: kBlack)),
            isExpanded: true,
            items: [
              for (var code in countryMaxLengths.keys)
                DropdownMenuItem<String>(
                  value: code,
                  child: Text(
                    code,
                    style:
                        textThinStyle1.copyWith(color: kBlack, fontSize: 12.sp),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
            ],
            value: controller.selectedCoutryCode.value,
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(borderRadius: kRadius5, color: kWhite),
              offset: const Offset(0, -5),
              maxHeight: 250,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
            ),
            dropdownSearchData: dropdownSearchData(controller: codeController),
            onChanged: (value) {
              controller.changeCoutryCode(value ?? '');
            },
            onMenuStateChange: (isOpen) {},
          ),
        ),
      );
    });
  }

  DropdownSearchData<String> dropdownSearchData(
      {TextEditingController? controller}) {
    return DropdownSearchData(
      searchController: controller,
      searchInnerWidgetHeight: 50,
      searchInnerWidget: SizedBox(
        height: 50,
        child: TextFormField(
          style: const TextStyle(color: kBlack),
          controller: controller,
          decoration: InputDecoration(
            counterStyle: const TextStyle(color: kBlack),
            labelStyle: textStyle1,
            icon: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Icon(
                Icons.search,
                color: kBlack,
              ),
            ),
            hintText: 'Search',
            hintStyle: textThinStyle1.copyWith(color: kBlack, fontSize: 10.sp),
          ),
        ),
      ),
      searchMatchFn: (item, searchValue) {
        return item.value.toString().toLowerCase().contains(
              searchValue.toLowerCase(),
            );
      },
    );
  }
}
