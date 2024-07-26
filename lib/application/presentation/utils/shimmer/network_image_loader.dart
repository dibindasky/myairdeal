import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

class NetworkImageWithLoading extends StatelessWidget {
  final String imageUrl;
  final double? height;

  const NetworkImageWithLoading(
      {super.key, required this.imageUrl, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      height: height,
      imageUrl,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: kGrey,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      (loadingProgress.expectedTotalBytes ?? 1)
                  : null,
            ),
          );
        }
      },
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) {
        return Icon(Icons.image, size: 20.h, color: kGrey);
      },
    );
  }
}
