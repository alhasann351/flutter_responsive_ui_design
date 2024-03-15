import 'package:flutter/cupertino.dart';
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
      //backgroundColor: Colors.blue[400],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blue[200],
                //height: 200,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 4,
                    child: Container(
                      color: Colors.blue[200],
                      height: 60,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
