import 'package:flutter/material.dart';
import 'package:lightvdark/pages/home_page.dart';
import 'package:lightvdark/theme/theme.dart';
import 'package:lightvdark/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
       child: const MyApp(),
     )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
