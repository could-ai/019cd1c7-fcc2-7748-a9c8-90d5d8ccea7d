import 'package:flutter/material.dart';
import '../models/family_member.dart';
import '../models/entity.dart';
import '../models/asset.dart';
import '../models/trust.dart';
import '../models/loan.dart';
import '../models/remuneration.dart';
import '../models/cashflow.dart';
import '../models/vault_item.dart';

class DataProvider extends ChangeNotifier {
  List<FamilyMember> _familyMembers = [];
  List<Entity> _entities = [];
  List<Asset> _assets = [];
  List<Trust> _trusts = [];
  List<Loan> _loans = [];
  List<Remuneration> _remunerations = [];
  List<Cashflow> _cashflows = [];
  List<VaultItem> _vaultItems = [];

  // Getters
  List<FamilyMember> get familyMembers => _familyMembers;
  List<Entity> get entities => _entities;
  List<Asset> get assets => _assets;
  List<Trust> get trusts => _trusts;
  List<Loan> get loans => _loans;
  List<Remuneration> get remunerations => _remunerations;
  List<Cashflow> get cashflows => _cashflows;
  List<VaultItem> get vaultItems => _vaultItems;

  // Mock seed data
  void seedData() {
    _familyMembers = [
      FamilyMember(
        id: '1',
        name: 'John Doe',
        relation: 'Head',
        role: 'Admin',
        status: 'active',
        displayName: 'John',
        linkedUserId: 'mock-user-id',
      ),
    ];
    _entities = [
      Entity(id: '1', name: 'Holding Co.', type: 'Holding Company', jurisdiction: 'USA', status: 'active'),
    ];
    notifyListeners();
  }

  // CRUD methods for family members
  void addFamilyMember(FamilyMember member) {
    _familyMembers.add(member);
    notifyListeners();
  }

  void updateFamilyMember(String id, FamilyMember updated) {
    final index = _familyMembers.indexWhere((m) => m.id == id);
    if (index != -1) {
      _familyMembers[index] = updated;
      notifyListeners();
    }
  }

  void deleteFamilyMember(String id) {
    _familyMembers.removeWhere((m) => m.id == id);
    notifyListeners();
  }

  // Similar CRUD for other entities (entities, assets, etc.)
  void addEntity(Entity entity) {
    _entities.add(entity);
    notifyListeners();
  }

  void updateEntity(String id, Entity updated) {
    final index = _entities.indexWhere((e) => e.id == id);
    if (index != -1) {
      _entities[index] = updated;
      notifyListeners();
    }
  }

  void deleteEntity(String id) {
    _entities.removeWhere((e) => e.id == id);
    notifyListeners();
  }

  // Add similar methods for assets, trusts, loans, etc.
}
