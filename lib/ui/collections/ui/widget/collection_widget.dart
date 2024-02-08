import 'package:ussd_code/ui/collections/data/model/tarif_model.dart';
import 'package:ussd_code/ui/collections/ui/widget/tarif_info.dart';
import 'package:ussd_code/ui/collections/ui/widget/tarif_info_sheet.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../../utils/tools/file_importers.dart';

class CollectionWidget extends StatelessWidget {
  final CompanyModel company;
  final int index;
  const CollectionWidget({
    super.key,
    required this.company,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    TarifModel tarif = company.tariflar[index];
    return ZoomTapAnimation(
      onTap: () {
        showTarifInfo(context, company, index);
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
                        tarif.name,
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
                            subtitle: "8000",
                            isTarif: false,
                          ),
                          TarifInfo(
                            title: "Muddati",
                            subtitle: "7 kun",
                            isTarif: false,
                          ),
                          const Divider(height: 1, color: Colors.grey),
                          Text(
                            tarif.price,
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
