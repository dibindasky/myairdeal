import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:shimmer/shimmer.dart';

class NetworkImageWithLoading extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final EdgeInsets? margin;

  const NetworkImageWithLoading(
      {super.key,
      required this.imageUrl,
      this.height,
      this.width,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Image.network(
        height: height,
        imageUrl,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Center(
                child: SizedBox(
              height: height,
              width: width,
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
            ));
          }
        },
        errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
          return Icon(Icons.image, size: 20.h, color: kGrey);
        },
      ),
    );
  }
}
