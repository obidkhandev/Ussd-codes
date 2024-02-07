class TarifModel {
  final String name;
  final String price;
  final String mb;
  final String min;
  final String sms;
  final String ussd;

  TarifModel(
    this.name, {
    required this.mb,
    required this.min,
    required this.price,
    required this.sms,
    required this.ussd,
  });
}
