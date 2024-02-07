import 'package:ussd_code/ui/collections/ui/tarif_widget.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

class CollectionsPage extends StatelessWidget {
  final CompanyModel company;
  const CollectionsPage({
    super.key,
    required this.company,
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ...List.generate(
              5,
              (index) => TarifWidget(company: company),
            ),
          ],
        ),
      ),
    );
  }
}
