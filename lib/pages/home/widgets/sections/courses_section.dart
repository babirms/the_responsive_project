import 'package:flutter/material.dart';
import 'package:the_responsive_project/breakpoints.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
          itemBuilder: (context, index) {
            return Container(color: Colors.red);
          });
    });
  }
}
