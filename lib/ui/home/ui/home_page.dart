import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:ussd_code/utils/constants/app_images.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height(context),
          width: width(context),
          child: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(child: Image.asset(AppImage.mobiuzLogo)),
                    Tab(child: Image.asset(AppImage.beelineLogo)),
                    Tab(child: Image.asset(AppImage.ucellLogo)),
                    Tab(child: Image.asset(AppImage.uzmobileLogo)),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Container(
                        height: height(context) * 0.8,
                        // color: Colors.red,
                        // child: Text("Mobiuz"),
                        child: Column(
                          children: [
                            FlutterCarousel(
                              options: CarouselOptions(
                                height: 400.0,
                                showIndicator: true,
                                slideIndicator: const CircularSlideIndicator(),
                              ),
                              items: [1, 2, 3, 4, 5].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        decoration:
                                            BoxDecoration(color: Colors.amber),
                                        child: Text(
                                          'text $i',
                                          style: TextStyle(fontSize: 16.0),
                                        ));
                                  },
                                );
                              }).toList(),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Text("Beeline"),
                      ),
                      Container(
                        child: Text("Ucell"),
                      ),
                      Container(
                        child: Text("Uzmobile"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
