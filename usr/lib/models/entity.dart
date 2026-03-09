class Entity {
  String id;
  String name;
  String type;
  String jurisdiction;
  String? registrationNumber;
  DateTime? incorporationDate;
  double? estimatedValue;
  String status;
  String? parentId;
  String? notes;

  Entity({
    required this.id,
    required this.name,
    required this.type,
    required this.jurisdiction,
    this.registrationNumber,
    this.incorporationDate,
    this.estimatedValue,
    required this.status,
    this.parentId,
    this.notes,
  });
}