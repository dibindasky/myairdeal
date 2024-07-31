import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ErrorRefreshIndicator extends StatelessWidget {
  const ErrorRefreshIndicator({
    super.key,
    this.shrinkWrap = false,
    required this.onRefresh,
    this.errorMessage = 'something went wrong pull to refresh',
    this.image,
  });

  final VoidCallback onRefresh;
  final String errorMessage;
  final bool shrinkWrap;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh();
        await Future.delayed(const Duration(milliseconds: 1500));
      },
      child: ListView(
        shrinkWrap: shrinkWrap,
        children: [
          kHeight50,
          kHeight50,
          image != null && image != ''
              ? Image.asset(image!)
              : const Icon(Icons.refresh, color: kGrey),
          Center(child: Text(errorMessage)),
          const SizedBox(width: double.infinity)
        ],
      ),
    );
  }
}
