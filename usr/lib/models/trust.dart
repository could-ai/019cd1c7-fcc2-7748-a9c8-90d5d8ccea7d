class Trust {
  String id;
  String name;
  String type;
  String jurisdiction;
  String? settlor;
  List<String>? trustees;
  List<String>? beneficiaries;
  double? estimatedValue;
  String? notes;

  Trust({
    required this.id,
    required this.name,
    required this.type,
    required this.jurisdiction,
    this.settlor,
    this.trustees,
    this.beneficiaries,
    this.estimatedValue,
    this.notes,
  });
}