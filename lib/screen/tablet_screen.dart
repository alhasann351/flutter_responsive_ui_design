import 'package:flutter/material.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var tabletWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablet Screen', style: TextStyle(color: Colors.white,),),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[400],
      body: Center(child: Text(tabletWidth.toString())),
    );
  }
}
