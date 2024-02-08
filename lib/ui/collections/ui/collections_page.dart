import 'package:ussd_code/ui/collections/ui/widget/collection_widget.dart';
import 'package:ussd_code/ui/collections/ui/widget/tarif_widget.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

class CollectionsPage extends StatelessWidget {
  final CompanyModel company;
  final bool isTarif;
  const CollectionsPage({
    super.key,
    required this.company,
    required this.isTarif,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          company.companyLogo,
          width: width(context) * 0.3,
        ),
      ),
      body: SizedBox(
        height: height(context),
        width: width(context),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          children: [
            if (isTarif)
              ...List.generate(
                company.tariflar.length,
                (index) => TarifWidget(
                  company: company,
                  index: index,
                ),
              ),
            if (!isTarif)
              DefaultTabController(
                length: company.allInternetPakets.length,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: company.color,
                      tabs: [
                        ...List.generate(
                            company.allInternetPakets.length,
                            (index) => Tab(
                                  text: company
                                      .allInternetPakets[index][0].expireDay,
                                ))
                      ],
                    ),
                    SizedBox(
                      height: height(context) * 0.8,
                      child: TabBarView(
                        children: [
                          ...List.generate(
                            company.allInternetPakets.length,
                            (paketIndex) => ListView(
                              children: [
                                ...List.generate(
                                  company.allInternetPakets[paketIndex].length,
                                  (index) => CollectionWidget(
                                      company: company,
                                      collection:
                                          company.allInternetPakets[paketIndex]
                                              [index]),
                                ),
                              ],
                            ),
                          ),
                          // ListView(
                          //   children: [
                          //     ...List.generate(
                          //       3,
                          //       (index) => CollectionWidget(
                          //         company: company,
                          //         index: 0,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // ListView(
                          //   children: [
                          //     ...List.generate(
                          //       3,
                          //       (index) => CollectionWidget(
                          //         company: company,
                          //         index: 0,
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
