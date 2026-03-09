import 'package:flutter/material.dart';
import '../widgets/app_layout.dart';

class RemunerationPage extends StatelessWidget {
  const RemunerationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Remuneration',
      body: const Center(child: Text('Remuneration CRUD - Placeholder')),
    );
  }
}