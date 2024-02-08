import 'package:ussd_code/ui/collections/data/model/tarif_model.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

class CompanyModel {
  final List image;
  final Color color;
  final String companyLogo;
  final List<TarifModel> tariflar;
  final List<List<CollectionModel>> allInternetPakets;

  CompanyModel({
    required this.allInternetPakets,
    required this.tariflar,
    required this.companyLogo,
    required this.color,
    required this.image,
  });
}
