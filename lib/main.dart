import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
// import 'package:quinart/view/home_page/home.dart';
import 'package:quinart/view/home_page/admin_home.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  initializeDateFormatting('ja_JP');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomeScreen(),
      home: const AdminHomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.sawarabiGothicTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
