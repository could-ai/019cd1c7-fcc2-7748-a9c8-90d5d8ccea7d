import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key, required this.title, required this.body});

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          if (authProvider.isAuthenticated)
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                authProvider.logout();
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('True Holder')),
            ListTile(
              title: const Text('Dashboard'),
              onTap: () => Navigator.pushNamed(context, '/platform'),
            ),
            ListTile(
              title: const Text('Family'),
              onTap: () => Navigator.pushNamed(context, '/platform/family'),
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () => Navigator.pushNamed(context, '/platform/profile'),
            ),
            ListTile(
              title: const Text('Entities'),
              onTap: () => Navigator.pushNamed(context, '/platform/entities'),
            ),
            ListTile(
              title: const Text('Structure'),
              onTap: () => Navigator.pushNamed(context, '/platform/structure'),
            ),
            ListTile(
              title: const Text('Assets'),
              onTap: () => Navigator.pushNamed(context, '/platform/assets'),
            ),
            ListTile(
              title: const Text('Trusts'),
              onTap: () => Navigator.pushNamed(context, '/platform/trusts'),
            ),
            ListTile(
              title: const Text('Loans'),
              onTap: () => Navigator.pushNamed(context, '/platform/loans'),
            ),
            ListTile(
              title: const Text('Remuneration'),
              onTap: () => Navigator.pushNamed(context, '/platform/remuneration'),
            ),
            ListTile(
              title: const Text('Cashflow'),
              onTap: () => Navigator.pushNamed(context, '/platform/cashflow'),
            ),
            ListTile(
              title: const Text('Vault'),
              onTap: () => Navigator.pushNamed(context, '/platform/vault'),
            ),
            ListTile(
              title: const Text('Link Account'),
              onTap: () => Navigator.pushNamed(context, '/platform/link-account'),
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}