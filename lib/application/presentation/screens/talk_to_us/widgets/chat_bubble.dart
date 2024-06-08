import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final String time;

  const ChatBubble({
    super.key,
    required this.text,
    required this.isSender,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          isSender
              ? kEmpty
              : CircleAvatar(
                  backgroundColor: kYellowDark,
                  backgroundImage: AssetImage(imageChatPerson),
                ),
          isSender ? kEmpty : kWidth5,
          Container(
            decoration: BoxDecoration(
              color: isSender ? kBlueLight.withOpacity(0.5) : kWhite,
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10),
                  bottomLeft:
                      isSender ? const Radius.circular(10) : Radius.zero,
                  bottomRight:
                      isSender ? Radius.zero : const Radius.circular(10),
                  topRight: const Radius.circular(10)),
            ),
            margin: EdgeInsets.symmetric(vertical: 3.h),
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: textStyle1,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      time,
                      style: textStyle1.copyWith(
                        fontSize: 10.sp,
                      ),
                    ),
                    isSender ? kWidth10 : kEmpty,
                    isSender
                        ? SizedBox(
                            height: 15.sp,
                            width: 15.sp,
                            child: const FittedBox(
                              child: Stack(
                                children: [
                                  Icon(Icons.check, color: kGreen),
                                  Positioned(
                                      left: 5,
                                      child: Icon(Icons.check, color: kGreen)),
                                ],
                              ),
                            ),
                          )
                        : kEmpty
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
