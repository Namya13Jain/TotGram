import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:tot_gram/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > webScreenSize) {
          return webScreenLayout;
          //web screen
        }
        //mobile screen
        return mobileScreenLayout;
      },
    );
  }
}
