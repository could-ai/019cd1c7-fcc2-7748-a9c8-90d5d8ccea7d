class Remuneration {
  String id;
  String familyMemberId;
  String? sourceEntityId;
  String? sourceName;
  String paymentType;
  double plannedAmount;
  String frequency;
  String currency;
  int taxYear;
  String? notes;

  Remuneration({
    required this.id,
    required this.familyMemberId,
    this.sourceEntityId,
    this.sourceName,
    required this.paymentType,
    required this.plannedAmount,
    required this.frequency,
    required this.currency,
    required this.taxYear,
    this.notes,
  });
}