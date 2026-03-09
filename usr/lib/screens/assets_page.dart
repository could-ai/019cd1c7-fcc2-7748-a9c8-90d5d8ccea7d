import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';
import '../widgets/app_layout.dart';

class AssetsPage extends StatelessWidget {
  const AssetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    return AppLayout(
      title: 'Assets',
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: dataProvider.assets.length,
        itemBuilder: (context, index) {
          final asset = dataProvider.assets[index];
          return Card(
            color: const Color(0xFF2A2A2A),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Icon(Icons.account_balance_wallet, color: const Color(0xFFD4AF37)),
                  Text(asset.name, style: const TextStyle(color: Colors.white)),
                  Text(asset.category, style: const TextStyle(color: Colors.white70)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}