import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';
import '../widgets/app_layout.dart';
import '../widgets/form_dialog.dart';
import '../widgets/detail_panel.dart';
import '../models/entity.dart';

class EntitiesPage extends StatelessWidget {
  const EntitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    return AppLayout(
      title: 'Entities',
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => _showAddDialog(context, dataProvider),
            child: const Text('Add Entity'),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: dataProvider.entities.length,
              itemBuilder: (context, index) {
                final entity = dataProvider.entities[index];
                return EntityCard(entity: entity, onTap: () => _showDetail(context, entity));
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
        title: 'Add Entity',
        fields: const [
          {'label': 'Name', 'type': 'text'},
          {'label': 'Type', 'type': 'select', 'options': ['Holding Company', 'Operating Company']},
          {'label': 'Jurisdiction', 'type': 'text'},
        ],
        onSubmit: (data) {
          final entity = Entity(
            id: DateTime.now().toString(),
            name: data['Name'],
            type: data['Type'],
            jurisdiction: data['Jurisdiction'],
            status: 'active',
          );
          dataProvider.addEntity(entity);
        },
      ),
    );
  }

  void _showDetail(BuildContext context, Entity entity) {
    showModalBottomSheet(
      context: context,
      builder: (_) => DetailPanel(entity: entity),
    );
  }
}

class EntityCard extends StatelessWidget {
  const EntityCard({super.key, required this.entity, required this.onTap});

  final Entity entity;
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
              Icon(Icons.business, color: const Color(0xFFD4AF37)),
              Text(entity.name, style: const TextStyle(color: Colors.white)),
              Text(entity.type, style: const TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ),
    );
  }
}