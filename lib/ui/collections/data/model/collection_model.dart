class CollectionModel {
  final String amount;
  final String price;
  final String expireDay;
  final String ussd;
  final String bonus;

  CollectionModel(
    this.amount, {
    
    required this.price,
    required this.expireDay,
    required this.ussd,
    this.bonus = '',
  });
}
