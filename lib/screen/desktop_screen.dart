import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var desktopWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Desktop Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      //backgroundColor: Colors.red[400],
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Drawer(
              child: Column(
                children: [
                  DrawerHeader(
                    child: Icon(Icons.record_voice_over_outlined),
                  ),
                  Text('Flutter'),
                  Text('Dart'),
                  Text('Java'),
                  Text('Kotlin'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.red[200],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AspectRatio(
                          aspectRatio: 16 / 3,
                          child: Container(
                            color: Colors.red[200],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red[200],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
