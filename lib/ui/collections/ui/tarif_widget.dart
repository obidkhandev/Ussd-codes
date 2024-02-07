import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_code/ui/collections/ui/widget/tarif_info.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TarifWidget extends StatelessWidget {
  final CompanyModel company;
  const TarifWidget({
    super.key,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              padding: const EdgeInsets.all(12),
              height: height(context) * 0.4,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        company.companyLogo,
                        // height: 40,
                        width: width(context) * 0.2,
                      ),
                      SizedBox(height: height(context) * 0.02),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: height(context) * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ta'rif nomi",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Salom 10",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: company.color,
                                  ),
                                )
                              ],
                            ),
                            TarifInfo(title: "Daqiqa", subtitle: "1200 daq"),
                            TarifInfo(title: "Internet", subtitle: "10000 mb"),
                            TarifInfo(title: "SMS", subtitle: "1200 sms"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ZoomTapAnimation(
                    onTap: () async {
                      await FlutterPhoneDirectCaller.callNumber("*100#");
                    },
                    child: Container(
                      margin: EdgeInsets.all(7),
                      height: height(context) * 0.07,
                      width: width(context),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: company.color,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "Ulanish - 12000 so'm",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: height(context) * 0.13,
        width: width(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: company.color,
              offset: const Offset(0.2, 0.2),
              blurRadius: 5,
              spreadRadius: 1.5,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0, 0),
              blurRadius: 0,
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: width(context) * 0.44,
                    child: Center(
                      child: Text(
                        "Salom 10",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: company.color,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height(context) * 0.13,
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  SizedBox(
                    width: width(context) * 0.44,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "12 ming so'm",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            // color: company.color,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: company.color,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              height: height(context) * 0.05,
                              child: const Center(
                                child: Text(
                                  "Ulanish",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
