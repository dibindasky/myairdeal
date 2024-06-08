import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class ComplaintForm extends StatefulWidget {
  const ComplaintForm({super.key});

  @override
  _ComplaintFormState createState() => _ComplaintFormState();
}

class _ComplaintFormState extends State<ComplaintForm> {
  final bookingController = Get.find<BookingController>();

  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  String? _selectedProduct;
  String? _fileName;
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          3,
          (index) => Obx(
            () => CustomRadioButton(
              onChanged: () {
                bookingController.changeContactUsRadioButton(index);
              },
              selected:
                  index == bookingController.selectedcontactUsradioButton.value,
              text: bookingController.contactusRadioItems[index],
            ),
          ),
        ),
        kHeight15,
        CustomTextField(
          isBorder: true,
          borderRadius: 10,
          textCapitalization: TextCapitalization.words,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: .3), borderRadius: kRadius5),
          onTapOutside: () => FocusScope.of(context).unfocus(),
          hintText: 'Enter name',
          fillColor: kWhite,
        ),
        CustomTextField(
          isBorder: true,
          borderRadius: 10,
          textCapitalization: TextCapitalization.words,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: .3), borderRadius: kRadius5),
          onTapOutside: () => FocusScope.of(context).unfocus(),
          hintText: 'Enter Mobile number',
          fillColor: kWhite,
        ),
        CustomTextField(
          isBorder: true,
          borderRadius: 10,
          textCapitalization: TextCapitalization.words,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: .3), borderRadius: kRadius5),
          onTapOutside: () => FocusScope.of(context).unfocus(),
          hintText: 'Enter Mail ID',
          fillColor: kWhite,
        ),
        _buildDropdown(),
        kHeight15,
        _buildFilePicker(),
        kHeight15,
        Text(
          'Add Description',
          style: textThinStyle1,
        ),
        kHeight5,
        CustomTextField(
          maxLines: 4,
          isBorder: true,
          borderRadius: 7,
          textCapitalization: TextCapitalization.words,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: .3),
          ),
          onTapOutside: () => FocusScope.of(context).unfocus(),
          hintText: 'Description',
          fillColor: kWhite,
        ),
        kHeight15,
        EventButton(
          width: 400.w,
          text: 'Submit',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildDropdown() {
    return Column(
      children: [
        const Text('Select Product'),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: kRadius10,
            border: Border.all(
              color: kBlack,
            ),
          ),
          height: 42.h,
          child: DropdownButton<String>(
            isExpanded: true,
            value: _selectedProduct,
            hint: const Text('Choose one'),
            items: <String>['Product 1', 'Product 2', 'Product 3']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedProduct = newValue;
              });
            },
          ),
        ),
        kHeight10
      ],
    );
  }

  Widget _buildFilePicker() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            child: ColoredBox(
              color: kBlueLightShade,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.w),
                child: const Text('Upload File'),
              ),
            ),
          ),
        ),
        EventButton(
          hieght: 37.h,
          borderRadius: 5,
          style: textThinStyle1.copyWith(fontSize: 10.sp, color: kWhite),
          width: 60.w,
          text: 'Browse',
          onTap: () async {
            // FilePickerResult? result = await FilePicker.platform.pickFiles();
            // if (result != null) {
            //   setState(() {
            //     _fileName = result.files.single.name;
            //   });
            // }
          },
        ),
        kHeight10
      ],
    );
  }
}
