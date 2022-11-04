import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  Widget buildAdvantages(String title, String subtitle) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(subtitle, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      children: [
        buildAdvantages('+45.000 alunos', 'Didática garantida'),
        buildAdvantages('+45.000 alunos', 'Didática garantida'),
        buildAdvantages('+45.000 alunos', 'Didática garantida'),
      ],
    );
  }
}
