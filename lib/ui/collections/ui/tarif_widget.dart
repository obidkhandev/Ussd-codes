import 'package:ussd_code/ui/collections/ui/widget/tarif_info_sheet.dart';
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
        showTarifInfo(context, company);
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
