// ignore_for_file: use_build_context_synchronously

import '../../../../utils/tools/file_importers.dart';

class CompanyBox extends StatelessWidget {
  final CompanyModel company;
  const CompanyBox({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context) * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CaruselWidget(images: company.image),
              ...List.generate(
                menu.length,
                (index) => MenuWidget(
                  model: menu[index],
                  color: company.color,
                  onTap: () async {
                    if (index < 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CollectionsPage(
                              company: company, isTarif: index == 0),
                        ),
                      );
                    } else {
                      String ussd = "";
                      switch (index) {
                        case 2:
                          ussd = company.tarifDetectorCode;
                          break;
                        case 3:
                          ussd = company.minuteBalance;
                          break;
                        case 4:
                          ussd = company.internetBalance;
                          break;
                        case 5:
                          ussd = company.smsBalance;
                          break;
                        default:
                      }
                      await FlutterPhoneDirectCaller.callNumber(ussd);
                      AnimatedSnackBar(
                          snackBarStrategy: RemoveSnackBarStrategy(),
                          duration: Duration(seconds: 3),
                          builder: (context) {
                            return AppSnackBar(
                                text: "So'rovingiz yuborildi",
                                icon: company.companyLogo,
                                color: company.color);
                          }).show(context);
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
