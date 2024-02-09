import 'package:ussd_code/ui/collections/data/model/tarif_model.dart';
import 'package:ussd_code/utils/tools/file_importers.dart';

class CompanyModel {
  final List image;
  final Color color;
  final String companyLogo;
  final List<TarifModel> tariflar;
  final List<List<CollectionModel>> allInternetPakets;
  final String tarifDetectorCode;
  final String internetBalance;
  final String smsBalance;
  final String minuteBalance;

  CompanyModel({
    required this.tarifDetectorCode,
    required this.internetBalance,
    required this.smsBalance,
    required this.minuteBalance,
    required this.allInternetPakets,
    required this.tariflar,
    required this.companyLogo,
    required this.color,
    required this.image,
  });
}
