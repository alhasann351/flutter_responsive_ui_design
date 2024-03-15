import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var desktopWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop Screen', style: TextStyle(color: Colors.white,),),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red[400],
      body: Center(child: Text(desktopWidth.toString())),
    );
  }
}
