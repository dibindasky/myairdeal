import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/widgets/chat_bubble.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';

class ScreenChatPage extends StatelessWidget {
  const ScreenChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final talkToUsController = Get.find<TalkToUsController>();
    final raiceController = Get.find<RaiceTicketController>();
    return Scaffold(
      body: Column(
        children: [
          AppBarCustomShape(
            bottomGap: kHeight10,
            topGap: kHeight30,
            backGroundImage: false,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    raiceController.changeSelectedYouCouldAlsoTab(-2);
                    talkToUsController.changetab(1);
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: kWhite),
                ),
                Text(
                  'Talk to us',
                  style: textStyle1.copyWith(color: kWhite, fontSize: 16.sp),
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: kRadius50,
                  child: const ColoredBox(
                    color: kWhite,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.phone_outlined),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: ListView.builder(
                // itemCount: 3,
                reverse: true,
                shrinkWrap: true,
                itemBuilder: (context, index) => ChatBubble(
                  isSender: index % 2 == 0,
                  text:
                      'Yes.. i am alwase free .. can we meet Yes.. i am alwase free .. can we meet Yes.. i am alwase free .. can we meet',
                  time: '12:15 PM',
                ),
              ),
            ),
          ),
          const ChatTextfieldContainer()
        ],
      ),
    );
  }
}

class ChatTextfieldContainer extends StatefulWidget {
  const ChatTextfieldContainer({
    super.key,
  });

  @override
  State<ChatTextfieldContainer> createState() => _ChatTextfieldContainerState();
}

class _ChatTextfieldContainerState extends State<ChatTextfieldContainer> {
  final TextEditingController chatController = TextEditingController();
  int maxLines = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 50.h + maxLines * 10.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: kGreyLight,
          border: Border(top: BorderSide(color: kGreyLight, width: 0))),
      child: Row(
        children: [
          kWidth10,
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: ClipRRect(
              borderRadius: kRadius15,
              child: TextField(
                controller: chatController,
                cursorColor: kGreyDark,
                onChanged: (value) {
                  setState(() {});
                  if (value == '') {
                    setState(() {
                      maxLines = 1;
                    });
                    return;
                  }
                  TextSpan span = TextSpan(
                    style: textStyle1.copyWith(color: kBlack),
                    text: value,
                  );

                  TextPainter tp = TextPainter(
                    text: span,
                    textDirection: TextDirection.ltr,
                    maxLines: maxLines,
                  );

                  tp.layout(maxWidth: MediaQuery.of(context).size.width);
                  if (tp.didExceedMaxLines) {
                    setState(() {
                      maxLines++;
                    });
                  }
                },
                maxLines: maxLines,
                style: textStyle1.copyWith(color: kBlack),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 0),
                  hintText: 'send message ...',
                  hintStyle: textStyle1.copyWith(color: kGrey),
                  filled: true,
                  fillColor: kWhite,
                  border: InputBorder.none,
                ),
              ),
            ),
          )),
          kWidth10,
          CircleAvatar(
            backgroundColor: kBlueDark,
            child: chatController.text == ''
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mic, color: kWhite),
                  )
                : IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send, color: kWhite)),
          ),
          kWidth10
        ],
      ),
    );
  }
}
