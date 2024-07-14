import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';
import 'package:myairdeal/domain/models/auth/login_model/country.dart';
import '../../../../../domain/models/auth/profile_update_model/profile_update_model.dart';

class ScreenEditProfile extends StatelessWidget {
  const ScreenEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => Get.find<AuthController>().getUserInfo(false),
    );
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(0),
            children: [
              DetailAppBar(
                heading: 'Update Profile',
                backButton: true,
                topGap: kHeight10,
              ),
              kHeight50,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First Name', style: textThinStyle1),
                    kHeight5,
                    CustomTextField(
                      controller: controller.updateFirnameController,
                      isBorder: true,
                      borderRadius: 10,
                      textCapitalization: TextCapitalization.words,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: .3),
                        borderRadius: kRadius10,
                      ),
                      onTapOutside: () => FocusScope.of(context).unfocus(),
                      hintText: 'Enter First Name',
                      fillColor: kWhite,
                    ),
                    kHeight15,
                    Text('Last Name', style: textThinStyle1),
                    kHeight5,
                    CustomTextField(
                      controller: controller.updateLastNameController,
                      isBorder: true,
                      borderRadius: 10,
                      textCapitalization: TextCapitalization.words,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: .3),
                        borderRadius: kRadius10,
                      ),
                      onTapOutside: () => FocusScope.of(context).unfocus(),
                      hintText: 'Enter Last Name',
                      fillColor: kWhite,
                    ),
                    kHeight15,
                    Text('Email', style: textThinStyle1), kHeight5,
                    CustomTextField(
                      controller: controller.updateEmailController,
                      isBorder: true,
                      borderRadius: 10,
                      textCapitalization: TextCapitalization.words,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: .3),
                        borderRadius: kRadius10,
                      ),
                      onTapOutside: () => FocusScope.of(context).unfocus(),
                      hintText: 'Enter Email',
                      fillColor: kWhite,
                    ),
                    kHeight15,
                    // Add other fields as necessary
                    kHeight50,
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20.h,
            left: 12.w,
            right: 12.w,
            child: Obx(
              () {
                return controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(color: kBluePrimary),
                      )
                    : EventIconButton(
                        width: MediaQuery.of(context).size.width - 24.w,
                        onTap: () {
                          ProfileUpdateModel profileUpdateModel =
                              ProfileUpdateModel(
                            country: Country(),
                            email: controller.updateEmailController.text,
                            firstName: controller.updateFirnameController.text,
                            lastName: controller.updateLastNameController.text,
                          );
                          controller.udateUserDetails(
                            profileUpdateModel: profileUpdateModel,
                          );
                        },
                        text: 'Update',
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
