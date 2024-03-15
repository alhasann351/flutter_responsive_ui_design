import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_design/responsive_layout.dart';

import 'screen/desktop_screen.dart';
import 'screen/mobile_screen.dart';
import 'screen/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: const MobileScreen(),
      tablet: const TabletScreen(),
      desktop: const DesktopScreen(),
    );
  }
}
