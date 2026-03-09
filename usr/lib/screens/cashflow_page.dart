import 'package:flutter/material.dart';
import '../widgets/app_layout.dart';

class CashflowPage extends StatelessWidget {
  const CashflowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Cashflow',
      body: const Center(child: Text('Cashflow with charts - Placeholder')),
    );
  }
}