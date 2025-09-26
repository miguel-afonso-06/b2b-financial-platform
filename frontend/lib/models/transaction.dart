class Transaction {
  String uuid;
  DateTime dateTime;
  String name;
  String description;
  String flow;
  String category;
  String type;
  double amount;
  String currency;
  String status;
  String account;
  String user;
  DateTime createdAt;
  DateTime updatedAt;

  Transaction({
    required this.uuid,
    required this.dateTime,
    required this.name,
    required this.description,
    required this.flow,
    required this.category,
    required this.type,
    required this.amount,
    required this.currency,
    required this.status,
    required this.account,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
  });
}