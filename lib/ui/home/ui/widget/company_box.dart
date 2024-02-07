import 'package:ussd_code/data/all_data/all_data.dart';
import 'package:ussd_code/data/models/company_model.dart';
import 'package:ussd_code/ui/home/ui/widget/carusel_widget.dart';
import 'package:ussd_code/ui/home/ui/widget/menu_widget.dart';
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
            (index) => MenuWidget(model: menu[index], color: company.color),
          ),
        ],
      ),
    );
  }
}
