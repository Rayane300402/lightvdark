// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:lightvdark/component/box.dart';
import 'package:lightvdark/component/button.dart';
import 'package:lightvdark/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Theme.of(context).colorScheme.surface,
      body: Center(
        child: MyBox(
            child: MyButton(
                color: Theme.of(context).colorScheme.secondary,
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                }
            ),
            color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
