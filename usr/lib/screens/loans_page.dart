import 'package:flutter/material.dart';
import '../widgets/app_layout.dart';

class LoansPage extends StatelessWidget {
  const LoansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Loans',
      body: const Center(child: Text('Loans CRUD with calculated fields - Placeholder')),
    );
  }
}