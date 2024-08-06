import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/widgets/chat_bubble.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenChatPage extends StatelessWidget {
  const ScreenChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(heading: 'Talk to us'),
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
