class Asset {
  String id;
  String name;
  String category;
  String? assetType;
  double? estimatedValue;
  String? currency;
  String? location;
  String? ownerName;
  String? ownerEntityId;
  Map<String, dynamic>? details;
  String? notes;

  Asset({
    required this.id,
    required this.name,
    required this.category,
    this.assetType,
    this.estimatedValue,
    this.currency,
    this.location,
    this.ownerName,
    this.ownerEntityId,
    this.details,
    this.notes,
  });
}