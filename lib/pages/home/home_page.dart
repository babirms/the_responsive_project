import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_responsive_project/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:the_responsive_project/pages/home/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < 800
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56))
              : PreferredSize(
                  child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
          drawer: Drawer(),
        );
      }),
    );
  }
}
