import 'package:ussd_code/ui/collections/ui/collections_page.dart';

import '../../../../utils/tools/file_importers.dart';

class CompanyBox extends StatelessWidget {
  final CompanyModel company;
  const CompanyBox({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context) * 0.9,
      child: Column(
        children: [
          CaruselWidget(images: company.image),
          ...List.generate(
            menu.length,
            (index) => MenuWidget(
              model: menu[index],
              color: company.color,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CollectionsPage(company: company, isTarif: index == 0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
