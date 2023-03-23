import 'package:flutter/material.dart';

import 'modules/Home/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Nubank UI',
      home: HomePage(),
    );
  }
}
