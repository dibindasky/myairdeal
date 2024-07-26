import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    Key? key,
    required this.crossAxisCount,
    required this.itemCount,
    this.height,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final int itemCount;
  final double? height;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    final double totalHeight =
        ((itemCount / crossAxisCount).ceil() * (height ?? 10 + 10)) + 10;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: childAspectRatio,
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return SizedBox(
            height: totalHeight,
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: kRadius5,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
