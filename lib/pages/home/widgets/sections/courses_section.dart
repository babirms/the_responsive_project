import 'package:flutter/material.dart';
import 'package:the_responsive_project/breakpoints.dart';
import 'package:the_responsive_project/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
          itemBuilder: (context, index) {
            return CourseItem();
          });
    });
  }
}
