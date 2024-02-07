import 'package:ussd_code/data/all_data/all_data.dart';
import 'package:ussd_code/ui/home/ui/widget/company_box.dart';
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
                      CompanyBox(company: companies[0]),
                      CompanyBox(company: companies[1]),
                      CompanyBox(company: companies[2]),
                      CompanyBox(company: companies[3]),
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
