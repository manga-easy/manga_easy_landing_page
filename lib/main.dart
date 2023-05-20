import 'package:flutter/material.dart';
import 'package:manga_easy_landing_page/src/core/inject/inject.dart';
import 'package:manga_easy_landing_page/src/presenter/ui/pages/home_page.dart';

void main() {
  Inject().registerDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
