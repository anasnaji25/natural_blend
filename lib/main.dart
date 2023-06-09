import 'package:flutter/material.dart';
import 'package:natural_blend/src/view/home_page.dart';
import 'package:natural_blend/src/view/responsive_view/responsive_home_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Natural Blend',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveHomeView(),
    );
  }
}
