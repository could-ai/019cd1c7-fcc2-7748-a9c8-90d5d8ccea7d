class FamilyMember {
  String id;
  String name;
  DateTime? dateOfBirth;
  String relation;
  String? role;
  String? taxResidency;
  List<String>? passports;
  String status;
  String? contactEmail;
  String? contactPhone;
  String? parentMemberId;
  String? notes;
  String? company;
  String? jobTitle;
  String? displayName;
  String? avatarUrl;
  String? linkedUserId;

  FamilyMember({
    required this.id,
    required this.name,
    this.dateOfBirth,
    required this.relation,
    this.role,
    this.taxResidency,
    this.passports,
    required this.status,
    this.contactEmail,
    this.contactPhone,
    this.parentMemberId,
    this.notes,
    this.company,
    this.jobTitle,
    this.displayName,
    this.avatarUrl,
    this.linkedUserId,
  });
}