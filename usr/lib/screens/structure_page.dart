import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';
import '../widgets/app_layout.dart';

class StructurePage extends StatelessWidget {
  const StructurePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    return AppLayout(
      title: 'Structure',
      body: CustomPaint(
        painter: OrgChartPainter(entities: dataProvider.entities),
        child: Container(),
      ),
    );
  }
}

class OrgChartPainter extends CustomPainter {
  final List entities;

  OrgChartPainter({required this.entities});

  @override
  void paint(Canvas canvas, Size size) {
    // Simple tree painting logic
    final paint = Paint()..color = Colors.white;
    // Draw nodes and lines
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}