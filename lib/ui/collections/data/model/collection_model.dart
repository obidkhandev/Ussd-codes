class CollectionModel {
  final String amount;
  final String price;
  final String expireDay;
  final String ussd;

  CollectionModel(
    this.amount, {
    required this.price,
    required this.expireDay,
    required this.ussd,
  });
}
