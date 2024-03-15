import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mobileWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mobile Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue[400],
      body: Center(
        child: Text(mobileWidth.toString()),
      ),
    );
  }
}
