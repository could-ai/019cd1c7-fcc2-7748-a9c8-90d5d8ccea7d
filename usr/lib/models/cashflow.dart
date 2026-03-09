class Cashflow {
  String id;
  String description;
  double amount;
  String currency;
  String category;
  String direction;
  DateTime expenseDate;
  String status;
  String? approvedBy;
  String? entityId;
  String? notes;

  Cashflow({
    required this.id,
    required this.description,
    required this.amount,
    required this.currency,
    required this.category,
    required this.direction,
    required this.expenseDate,
    required this.status,
    this.approvedBy,
    this.entityId,
    this.notes,
  });
}