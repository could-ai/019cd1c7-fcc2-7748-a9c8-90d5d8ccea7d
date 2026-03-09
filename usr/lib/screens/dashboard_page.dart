import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';
import '../widgets/app_layout.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    return AppLayout(
      title: 'Dashboard',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Summary Cards
            Row(
              children: [
                SummaryCard(title: 'Entities', value: dataProvider.entities.length.toString()),
                SummaryCard(title: 'Assets', value: dataProvider.assets.length.toString()),
                SummaryCard(title: 'Family Members', value: dataProvider.familyMembers.length.toString()),
                SummaryCard(title: 'Loans', value: dataProvider.loans.length.toString()),
              ],
            ),
            const SizedBox(height: 40),
            // Charts
            Container(
              height: 300,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(value: 40, color: Colors.blue, title: 'Real Estate'),
                    PieChartSectionData(value: 30, color: Colors.green, title: 'Financial'),
                    PieChartSectionData(value: 30, color: Colors.red, title: 'Other'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2A2A2A),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(title, style: const TextStyle(color: Colors.white70)),
            Text(value, style: const TextStyle(fontSize: 24, color: Color(0xFFD4AF37))),
          ],
        ),
      ),
    );
  }
}