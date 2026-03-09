import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'providers/data_provider.dart';
import 'screens/landing_page.dart';
import 'screens/auth_page.dart';
import 'screens/dashboard_page.dart';
import 'screens/family_page.dart';
import 'screens/profile_page.dart';
import 'screens/entities_page.dart';
import 'screens/structure_page.dart';
import 'screens/assets_page.dart';
import 'screens/trusts_page.dart';
import 'screens/loans_page.dart';
import 'screens/remuneration_page.dart';
import 'screens/cashflow_page.dart';
import 'screens/vault_page.dart';
import 'screens/link_account_page.dart';
import 'screens/terms_page.dart';
import 'screens/privacy_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => DataProvider()),
      ],
      child: const TrueHolderApp(),
    ),
  );
}

class TrueHolderApp extends StatelessWidget {
  const TrueHolderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'True Holder',
      debugShowCheckedModeBanner: false,
      theme: _buildDarkTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/auth': (context) => const AuthPage(),
        '/platform': (context) => const DashboardPage(),
        '/platform/family': (context) => const FamilyPage(),
        '/platform/profile': (context) => const ProfilePage(),
        '/platform/entities': (context) => const EntitiesPage(),
        '/platform/structure': (context) => const StructurePage(),
        '/platform/assets': (context) => const AssetsPage(),
        '/platform/trusts': (context) => const TrustsPage(),
        '/platform/loans': (context) => const LoansPage(),
        '/platform/remuneration': (context) => const RemunerationPage(),
        '/platform/cashflow': (context) => const CashflowPage(),
        '/platform/vault': (context) => const VaultPage(),
        '/platform/link-account': (context) => const LinkAccountPage(),
        '/terms': (context) => const TermsPage(),
        '/privacy': (context) => const PrivacyPage(),
      },
    );
  }

  ThemeData _buildDarkTheme() {
    return ThemeData.dark().copyWith(
      primaryColor: const Color(0xFFD4AF37), // Gold accent
      scaffoldBackgroundColor: const Color(0xFF1A1A1A),
      cardColor: const Color(0xFF2A2A2A),
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFFD4AF37),
        secondary: Color(0xFFD4AF37),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(color: Colors.white, fontFamily: 'Inter'),
        bodyLarge: TextStyle(color: Colors.white70, fontFamily: 'Inter'),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFD4AF37),
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}