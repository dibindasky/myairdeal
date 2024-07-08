import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:shimmer/shimmer.dart';

class HorizontalShimmerSkeleton extends StatelessWidget {
  final int itemCount;
  final Axis scrollDirection;
  final double height;
  final double width;

  const HorizontalShimmerSkeleton({
    Key? key,
    required this.itemCount,
    required this.scrollDirection,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SizedBox(
        height: 125,
        child: ListView.builder(
          scrollDirection: scrollDirection,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: width,
                height: height,
                decoration:
                    BoxDecoration(color: Colors.white, borderRadius: kRadius10),
              ),
            );
          },
        ),
      ),
    );
  }
}
