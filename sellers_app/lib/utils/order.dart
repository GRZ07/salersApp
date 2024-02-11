class Order {
  final int id;
  final String status;
  final String sellerName;
  final double price;
  final String date;

  Order({
    required this.id,
    required this.status,
    required this.sellerName,
    required this.price,
    required this.date,
  });
}