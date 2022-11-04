import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Image.network(
        'https://images.unsplash.com/photo-1661961110372-8a7682543120?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        fit: BoxFit.fitWidth,
      ),
      const SizedBox(
        height: 4,
      ),
      const Flexible(
        child: AutoSizeText(
          'Criação de Apps Android e iOS com flutter - Crise 16 Apps',
          minFontSize: 5,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      const Text(
        'Daniel Ciolfi',
        style: TextStyle(color: Colors.grey),
      ),
      const Text(
        'R\$22,90',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    ]);
  }
}
