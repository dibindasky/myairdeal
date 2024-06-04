import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/screens/explore/explore_screen.dart';
import 'package:myairdeal/application/presentation/utils/animations/page_view_animation.dart';

class PreviewPageviewImageBuilder extends StatefulWidget {
  const PreviewPageviewImageBuilder({super.key, required this.imagesList});

  final List<Map<String, String>> imagesList;

  @override
  State<PreviewPageviewImageBuilder> createState() =>
      _PreviewPageviewImageBuilderState();
}

class _PreviewPageviewImageBuilderState
    extends State<PreviewPageviewImageBuilder> {
  late PageController pageController;
  int currentIndex = 0;
  double pageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      viewportFraction: 0.8,
    )..addListener(() {
        setState(() {
          pageValue = pageController.page!;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return PagviewAnimateBuilder(
      pageController: pageController,
      pageValue: pageValue,
      pageCount: widget.imagesList.length,
      onpageCallBack: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      child: (index, context) => FlightCard(
        image: widget.imagesList[index]['image']!,
      ),
    );
  }
}

class ImagePreviewScrollView extends StatefulWidget {
  const ImagePreviewScrollView({super.key, required this.image});

  final String image;

  @override
  State<ImagePreviewScrollView> createState() => _ImagePreviewScrollViewState();
}

class _ImagePreviewScrollViewState extends State<ImagePreviewScrollView> {
  // Uint8List image = Uint8List(0);
  // @override
  // void initState() {
  //   image = base64Decode(widget.image);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            // if (widget.isStory??false == false) {
            //   Navigator.of(context).push(fadePageRoute(ScreenImagePreview(
            //     image: widget.image,
            //   )));
            // }
          },
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              widget.image,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.image_not_supported_outlined),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
