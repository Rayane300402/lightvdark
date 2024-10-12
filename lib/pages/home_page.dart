// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:lightvdark/component/box.dart';
import 'package:lightvdark/component/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: Center(
        child: MyBox(
            child: MyButton(
                color: Colors.blue[200],
                onTap: () {}
            ),
            color: Colors.blue[300]),
      ),
    );
  }
}
