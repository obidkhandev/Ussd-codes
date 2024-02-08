import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:ussd_code/ui/collections/data/model/tarif_model.dart';
import 'package:ussd_code/ui/collections/ui/widget/tarif_info.dart';
import 'package:ussd_code/utils/constants/app_snack_bar.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

void showTarifInfo(context, CompanyModel company, int index) {
  TarifModel tarif = company.tariflar[index];
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(12),
        height: height(context) * 0.37,
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
                  padding:
                      EdgeInsets.symmetric(horizontal: height(context) * 0.03),
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
                            tarif.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: company.color,
                            ),
                          )
                        ],
                      ),
                      TarifInfo(title: "Daqiqa", subtitle: tarif.min),
                      TarifInfo(title: "Internet", subtitle: tarif.mb),
                      TarifInfo(title: "SMS", subtitle: tarif.sms),
                    ],
                  ),
                ),
              ],
            ),
            ZoomTapAnimation(
              onTap: () async {
                await FlutterPhoneDirectCaller.callNumber(tarif.ussd);
                Navigator.pop(context);
                AnimatedSnackBar(
                    duration: Duration(seconds: 3),
                    builder: (context) {
                      return AppSnackBar(
                          text: "So'rovingiz yuborildi",
                          icon: company.companyLogo,
                          color: company.color);
                    }).show(context);
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
                  "Ulanish - ${tarif.price}",
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
}
