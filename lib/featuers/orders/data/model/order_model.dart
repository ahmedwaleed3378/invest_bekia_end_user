class OrderModel {
  final String? scrapType;
  final String? quantity;
  final String? price;
  final String? date;
  final int? status;
  final String? dateToReceive;
  final String? adminsNote;
  final String? orderCode;

  OrderModel({
    required this.scrapType,
    required this.quantity,
    required this.orderCode,
    required this.price,
    required this.date,
    required this.status,
    required this.dateToReceive,
    required this.adminsNote,
  });
}
