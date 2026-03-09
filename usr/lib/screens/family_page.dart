import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';
import '../widgets/app_layout.dart';
import '../widgets/form_dialog.dart';
import '../widgets/detail_panel.dart';
import '../models/family_member.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    return AppLayout(
      title: 'Family Members',
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => _showAddDialog(context, dataProvider),
            child: const Text('Add Member'),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: dataProvider.familyMembers.length,
              itemBuilder: (context, index) {
                final member = dataProvider.familyMembers[index];
                return FamilyCard(member: member, onTap: () => _showDetail(context, member));
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showAddDialog(BuildContext context, DataProvider dataProvider) {
    showDialog(
      context: context,
      builder: (_) => FormDialog(
        title: 'Add Family Member',
        fields: const [
          {'label': 'Name', 'type': 'text'},
          {'label': 'Relation', 'type': 'select', 'options': ['Head', 'Husband', 'Wife']},
          {'label': 'Email', 'type': 'text'},
        ],
        onSubmit: (data) {
          final member = FamilyMember(
            id: DateTime.now().toString(),
            name: data['Name'],
            relation: data['Relation'],
            status: 'active',
          );
          dataProvider.addFamilyMember(member);
        },
      ),
    );
  }

  void _showDetail(BuildContext context, FamilyMember member) {
    showModalBottomSheet(
      context: context,
      builder: (_) => DetailPanel(member: member),
    );
  }
}

class FamilyCard extends StatelessWidget {
  const FamilyCard({super.key, required this.member, required this.onTap});

  final FamilyMember member;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2A2A2A),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(
                child: Text(member.name[0]),
              ),
              Text(member.name, style: const TextStyle(color: Colors.white)),
              Text(member.relation, style: const TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ),
    );
  }
}