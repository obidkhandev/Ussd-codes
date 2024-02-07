import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

class CaruselWidget extends StatelessWidget {
  final List images;
  const CaruselWidget({
    required this.images,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        height: height(context) * 0.3,
        showIndicator: true,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 3),
        slideIndicator: const CircularSlideIndicator(),
      ),
      items: images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.all(6),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(i), fit: BoxFit.cover),
                color: Colors.amber,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
