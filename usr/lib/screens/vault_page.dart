import 'package:flutter/material.dart';
import '../widgets/app_layout.dart';

class VaultPage extends StatelessWidget {
  const VaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Vault',
      body: const Center(child: Text('Encrypted vault - Placeholder')),
    );
  }
}