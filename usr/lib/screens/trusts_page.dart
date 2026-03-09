import 'package:flutter/material.dart';
import '../widgets/app_layout.dart';

class TrustsPage extends StatelessWidget {
  const TrustsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Trusts',
      body: const Center(child: Text('Trusts CRUD - Placeholder')),
    );
  }
}