import 'package:flutter/material.dart';
import 'package:news_app/views/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      title: 'News App',
      theme: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(),
      ),
    );
  }
}
