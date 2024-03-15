import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

  Widget mobile, tablet, desktop;

  ResponsiveLayout({super.key, required this.mobile, required this.tablet, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 480){
          return mobile;
        }else if(constraints.maxWidth < 1100){
          return tablet;
        }else{
          return desktop;
        }
      },
    );
  }
}
