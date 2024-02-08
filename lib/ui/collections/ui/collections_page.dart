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
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          ...List.generate(
            company.tariflar.length,
            (index) => TarifWidget(company: company,index: index,),
          ),
        ],
      ),
    );
  }
}
