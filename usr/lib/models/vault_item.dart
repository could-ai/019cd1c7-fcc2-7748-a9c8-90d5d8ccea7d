class VaultItem {
  String id;
  String label;
  String type;
  String encryptedContent;
  String? notes;
  DateTime? lastAccessed;

  VaultItem({
    required this.id,
    required this.label,
    required this.type,
    required this.encryptedContent,
    this.notes,
    this.lastAccessed,
  });
}