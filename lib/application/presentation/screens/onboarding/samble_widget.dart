import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class ScreenOnBoard extends StatelessWidget {
  const ScreenOnBoard({
    super.key,
    this.image,
    this.text,
    required this.skipOnTap,
    required this.nextTap,
    this.secText,
    this.thirdText,
  });

  final String? image;
  final String? text;
  final String? secText;
  final String? thirdText;
  final VoidCallback skipOnTap;
  final VoidCallback nextTap;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 0.6;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              SizedBox(
                height: imageHeight,
                child: Image.asset(
                  image ?? onBoardImage,
                  fit: BoxFit.cover,
                ),
              ),
              kHeight40,
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    strutStyle: const StrutStyle(leading: 2, height: 1),
                    '''${text ?? ''} \n${secText ?? ''} \n${thirdText ?? ''}''',
                    style: textHeadStyle1.copyWith(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              kHeight20,
              Hero(
                tag: 'hero',
                child: Material(
                  type: MaterialType.transparency,
                  child: Row(
                    children: [
                      Expanded(
                        child: EventButton(
                          onTap: skipOnTap,
                          text: 'Skip',
                        ),
                      ),
                      kWidth10,
                      Expanded(
                        child: EventIconButton(
                          suffixIcon: const Icon(
                            Icons.arrow_circle_right_outlined,
                            color: kWhite,
                            size: 18,
                          ),
                          onTap: nextTap,
                          text: 'Next',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
