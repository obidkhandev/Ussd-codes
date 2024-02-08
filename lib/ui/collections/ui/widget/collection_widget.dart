import 'package:ussd_code/ui/collections/ui/widget/tarif_info.dart';
import 'package:ussd_code/utils/constants/app_snack_bar.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../../utils/tools/file_importers.dart';

class CollectionWidget extends StatelessWidget {
  final CompanyModel company;
  final CollectionModel collection;
  const CollectionWidget({
    super.key,
    required this.company,
    required this.collection,
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
              height: height(context) * 0.32,
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
                                const Text(
                                  "Toplam nomi",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  collection.amount,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: company.color,
                                  ),
                                )
                              ],
                            ),
                            TarifInfo(
                                title: "Miqdori", subtitle: collection.amount),
                            TarifInfo(
                                title: "Muddati",
                                subtitle: collection.expireDay),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ZoomTapAnimation(
                    onTap: () async {
                      await FlutterPhoneDirectCaller.callNumber(
                          collection.ussd);
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
                      margin: const EdgeInsets.all(7),
                      height: height(context) * 0.07,
                      width: width(context),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: company.color,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "Ulanish - ${collection.price}",
                        style: const TextStyle(
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
        height: height(context) * 0.12,
        width: width(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: company.color),
        ),
        child: Row(
          children: [
            SizedBox(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: width(context) * 0.28,
                    child: Center(
                      child: Text(
                        collection.amount,
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
                    width: width(context) * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TarifInfo(
                            title: "Narxi",
                            subtitle: collection.price,
                            isTarif: false,
                          ),
                          TarifInfo(
                            title: "Muddati",
                            subtitle: collection.expireDay,
                            isTarif: false,
                          ),
                          const Divider(height: 1, color: Colors.grey),
                          Text(
                            collection.ussd,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              // color: company.color,
                            ),
                          ),
                        ],
                      ),
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
