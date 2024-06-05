import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ReadMoreText extends StatefulWidget {
  final String text;
  final int trimLines;

  const ReadMoreText({super.key, required this.text, this.trimLines = 2});

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool isReadMore = true;

  @override
  Widget build(BuildContext context) {
    final textSpan = TextSpan(
      text: widget.text,
      style: const TextStyle(color: kBlack),
    );

    final textPainter = TextPainter(
      text: textSpan,
      maxLines: widget.trimLines,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: MediaQuery.of(context).size.width);

    final isTextOverflowed = textPainter.didExceedMaxLines;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isReadMore && isTextOverflowed
            ? Text(
                widget.text,
                maxLines: widget.trimLines,
                overflow: TextOverflow.ellipsis,
              )
            : Text(widget.text),
        isTextOverflowed
            ? InkWell(
                onTap: () {
                  setState(() {
                    isReadMore = !isReadMore;
                  });
                },
                child: Text(
                  isReadMore ? 'Read More' : 'Read Less',
                  style: textThinStyle1.copyWith(color: kBlue, fontSize: 10.sp),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
