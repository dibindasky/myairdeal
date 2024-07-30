import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:shimmer/shimmer.dart';

class HorizontalShimmerSkeleton extends StatelessWidget {
  final int itemCount;
  final Axis scrollDirection;
  final double height;
  final double width;
  final double paddingvertical;
  final double paddingHorizontal;
  final double totalHeight;

  const HorizontalShimmerSkeleton({
    Key? key,
    required this.itemCount,
    required this.scrollDirection,
    this.height = 200,
    this.width = 100,
    this.totalHeight = 125,
    this.paddingHorizontal = 0,
    this.paddingvertical = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: scrollDirection == Axis.vertical ? null : totalHeight,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: scrollDirection == Axis.vertical ? true : false,
        separatorBuilder: (context, index) =>
            scrollDirection != Axis.horizontal ? kHeight10 : kWidth10,
        scrollDirection: scrollDirection,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal, vertical: paddingvertical),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                width: width,
                height: height,
                decoration:
                    BoxDecoration(color: kWhite, borderRadius: kRadius10),
              ),
            ),
          );
        },
      ),
    );
  }
}
