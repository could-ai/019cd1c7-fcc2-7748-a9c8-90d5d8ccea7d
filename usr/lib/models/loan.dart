class Loan {
  String id;
  String name;
  String loanType;
  double principalAmount;
  double outstandingBalance;
  double interestRate;
  String interestType;
  String repaymentFrequency;
  DateTime startDate;
  DateTime maturityDate;
  String currency;
  String status;
  String lenderType;
  String borrowerType;
  String? lenderEntityId;
  String? borrowerEntityId;
  String? lenderFamilyMemberId;
  String? borrowerFamilyMemberId;
  String? lenderName;
  String? borrowerName;
  String? securityDetails;
  String? notes;

  Loan({
    required this.id,
    required this.name,
    required this.loanType,
    required this.principalAmount,
    required this.outstandingBalance,
    required this.interestRate,
    required this.interestType,
    required this.repaymentFrequency,
    required this.startDate,
    required this.maturityDate,
    required this.currency,
    required this.status,
    required this.lenderType,
    required this.borrowerType,
    this.lenderEntityId,
    this.borrowerEntityId,
    this.lenderFamilyMemberId,
    this.borrowerFamilyMemberId,
    this.lenderName,
    this.borrowerName,
    this.securityDetails,
    this.notes,
  });
}