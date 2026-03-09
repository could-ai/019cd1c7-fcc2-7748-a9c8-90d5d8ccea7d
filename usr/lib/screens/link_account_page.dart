import 'package:flutter/material.dart';
import '../widgets/app_layout.dart';

class LinkAccountPage extends StatelessWidget {
  const LinkAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'Link Account',
      body: const Center(child: Text('Link invited user - Placeholder')),
    );
  }
}