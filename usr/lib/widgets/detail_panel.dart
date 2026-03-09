import 'package:flutter/material.dart';
import '../models/family_member.dart';
import '../models/entity.dart';

class DetailPanel extends StatelessWidget {
  const DetailPanel({super.key, this.member, this.entity});

  final FamilyMember? member;
  final Entity? entity;

  @override
  Widget build(BuildContext context) {
    final item = member ?? entity;
    if (item == null) return const SizedBox();

    return Container(
      padding: const EdgeInsets.all(20),
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(item is FamilyMember ? 'Member Details' : 'Entity Details', style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          // DetailRows here
          ElevatedButton(
            onPressed: () {},
            child: const Text('Edit'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}